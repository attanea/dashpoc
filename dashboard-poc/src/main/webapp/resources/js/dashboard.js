$(function () {
    var eventAggregator = _.extend({}, Backbone.Events);

    var Application = Backbone.Model.extend({
    });

    var ApplicationsCollection = Backbone.Collection.extend({
        model: Application,
        url: '/dashboard/config/petzi',

        initialize : function(options) {
            this.eventAggregator = options.eventAggregator;
        },

        parse: function(response){
            var applicationFilters = response.filters || [];
            this.eventAggregator.trigger("filtersLoaded", applicationFilters);
            return response.applications;
        }
    });

    var Filter = Backbone.Model.extend({
    });

    var Filters = Backbone.Collection.extend({
        model: Filter
    });

    var ApplicationView = Backbone.View.extend({
        tagName: 'a',

        initialize: function(options) {
            // Bind to template
            this.template = _.template($("#app-template").html());
        },

        render: function() {
            this.$el.html(this.template(this.model.toJSON()));
            return this;
        }
    });

    var ApplicationsCollectionView = Backbone.View.extend({
        initialize : function(options) {
            var that = this;
            this.eventAggregator = options.eventAggregator;
            //this.initialCollection = this.collection.clone();
            // Bind render method to this object
            _.bindAll(this,
                'render',
                'onFilterSelect',
                'onApplicationSearch',
                'onModelChange'
            );
            this.collection.bind('reset', this.onModelChange);
            this.eventAggregator.bind("filterSelected", this.onFilterSelect);
            this.eventAggregator.bind("searchApplications", this.onApplicationSearch);
        },

        onModelChange: function(){
            this.initialCollection =  this.initialCollection || this.collection.clone();
            this.render();
        },

        render : function() {
            var that = this;
            // Clear out this element.
            $(this.el).empty();

            this._applicationViews = [];

            var appCollectionClone = _.clone(this.collection);

            this.collection.each(function(app) {
                that._applicationViews.push(new ApplicationView({
                    model : app
                    //tagName : 'a'
                }));
            });

            // Render each sub-view and append it to the parent view's element.
            var appViewsElements = [];
            _(this._applicationViews).each(function(appView) {
                appViewsElements.push(appView.render().el);
            });
            $(that.el).append(appViewsElements);
        },

        onFilterSelect: function(filterName){
            if (filterName === 'All'){
                this.collection.reset(this.initialCollection.models);
            } else if (filterName === 'My favorites'){
                var tmpApplicationCollection = new ApplicationsCollection([]);
                this.initialCollection.each(function(app) {
                    if (app.get("favourite")){
                        tmpApplicationCollection.add(app);
                    }
                });
                this.collection.reset(tmpApplicationCollection.models);
            } else {
                var tmpApplicationCollection = new ApplicationsCollection([]);
                this.initialCollection.each(function(app) {
                    var applicationFilters = app.get("filters");
                    if (!_.isUndefined(applicationFilters) && _.contains(applicationFilters, filterName)){
                        tmpApplicationCollection.add(app);
                    }
                });
                this.collection.reset(tmpApplicationCollection.models);
            }
            this.render();
        },

        onApplicationSearch: function(searchToken){
            var tmpApplicationCollection = new ApplicationsCollection([]);
            this.initialCollection.each(function(app) {
                if (app.get("name").toLowerCase().indexOf(searchToken.toLowerCase()) != -1){
                    tmpApplicationCollection.add(app);
                }
            });
            this.collection.reset(tmpApplicationCollection.models);
            this.render();
        }
    });

    var FilterView = Backbone.View.extend({
        tagName: 'a',

        events: {
            "click a": "triggerFilterSelected"
        },

        initialize: function(options) {
            // Bind to template
            this.template = _.template($("#filter-template").html());
            this.selected = options.selected;

            // Bind render method to this object
            _.bindAll(this,
                'render',
                'onFilterSelected',
                'triggerFilterSelected'
            );
            this.eventAggregator = options.eventAggregator;
            this.eventAggregator.bind("filterSelected", this.onFilterSelected);
        },

        render: function() {
            var extModel = this.model.clone();
            extModel.attributes.selected = this.selected;
            this.$el.html(this.template(extModel.toJSON()));
            return this;
        },

        onFilterSelected: function(filterName){
            if (this.selected && this.model.get("name") !== filterName){
                this.selected = false;
                this.render();
            } else if (this.model.get("name") === filterName && !this.selected){
                this.selected = true;
                this.render();
            }

        },

        triggerFilterSelected: function(){
            this.eventAggregator.trigger("filterSelected", this.model.get("name"));
        }
    });

    var FilterCollectionView = Backbone.View.extend({
        initialize: function(options) {
            _.bindAll(this, 'render', 'onFiltersLoaded');
            this.eventAggregator = options.eventAggregator;
            this.eventAggregator.bind("filtersLoaded", this.onFiltersLoaded);
        },

        onFiltersLoaded: function(filters){
            var filterObjects = [{"name" : "All"}, {"name" : "My favorites"}];
            _.each(filters, function(filter){
                filterObjects.push({"name" : filter});
            });

            this.collection = new Filters(filterObjects);
            this.render();
        },

        render : function() {
            var that = this;
            // Clear out this element.
            $(this.el).empty();

            var filterViews = [];
            var isFirst = true;
            this.collection.each(function(filter){
                var view = new FilterView({
                    model: filter,
                    selected:  isFirst,
                    eventAggregator: that.eventAggregator
                });
                isFirst = false;
                filterViews.push(view.render().el);
            });
            $(that.el).append(filterViews);
            //this.selectFirstFilter();
            return this;
        },

        selectFirstFilter: function(){
            if (this.collection.length > 0){
                this.eventAggregator.trigger("filterSelected", this.collection.at(0).get("name"));
            }
        }
    });

    var ApplicationSearchView = Backbone.View.extend({
        el: $('#app_search').parent(),
        events: {
            "keyup #app_search": "triggerSearch"
        },

        initialize: function(options) {
            _.bindAll(this, 'render', 'triggerSearch');
            this.eventAggregator = options.eventAggregator;
        },
        triggerSearch: function(event){
            var val = $(event.currentTarget).val();
            this.eventAggregator.trigger("searchApplications", val);
            //this.eventAggregator.trigger("filterSelected", "All");
        }
    });

    var Router = Backbone.Router.extend({
        routes: {
            '': 'index'  // At first we display the index route
        },

        index: function() {

            var applications = new ApplicationsCollection({
                eventAggregator : eventAggregator
            });

            var appCollectionView = new ApplicationsCollectionView({
                collection : applications,
                el : $('#applications'),
                eventAggregator : eventAggregator
            });

/*            var joinedFilters = [];
            applications.each(function(app) {
                if (!_.isUndefined(app.get("filters"))){
                    joinedFilters = _.union(joinedFilters, app.get("filters"));
                }
            });
            var filterObjects = [{"name" : "All"}, {"name" : "My favorites"}];
            _.each(joinedFilters, function(filter){
                filterObjects.push({"name" : filter});
            });

            var filters = new Filters(filterObjects);*/

            var filterCollectionView = new FilterCollectionView({
                //collection : filters,
                el : $('#filter_list'),
                eventAggregator : eventAggregator
            });

            var applicationSearch = new ApplicationSearchView({
                eventAggregator : eventAggregator
            });

            applications.fetch({'reset': true});
            /*
            filterCollectionView.render();
            applicationSearch.render();*/
        }
    });

    $(document).ready(function() {
        _.templateSettings = {
            interpolate: /\<\@\=(.+?)\@\>/gim,
            evaluate: /\<\@(.+?)\@\>/gim,
            escape: /\<\@\-(.+?)\@\>/gim
        };
        // When the document is ready we instantiate the router
        var router = new Router();

        // And tell Backbone to start routing
        Backbone.history.start();
    });

});