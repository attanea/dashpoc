var data = {};
data.viewModel = undefined;

function ApplicationViewModel(data){
    var self = this;
    self.name = ko.observable(data.name);
    self.description = ko.observable(data.description);
    self.filters = ko.observableArray(data.filters);
    self.favourite = ko.observable(data.favourite);
}

var aViewModel = {
    vendors: ko.observableArray()
};

function ApplicationListViewModel(json) {
    this.applications = ko.observableArray();
    this.selectedFilter = ko.observable('Banking');
    this.filters = ['All', 'Favorite','Banking','Investment','Admin','Audit','Communication','Employee','IT / Support','EFG websites'];
    this.query = ko.observable('');
    this.filteredApplications = ko.computed(function () {
        // Represents a filtered list of apps
        var query  = this.query();
        var filter = this.selectedFilter();
        if (filter == "All") return this.applications();
        return ko.utils.arrayFilter(this.applications(), function (app) {
            if (query) {
                return app.name().toLowerCase().indexOf(query) > -1 && app.filters().indexOf(filter) > -1;
            } else {
                 return app.filters().indexOf(filter) > -1;
            }
        });
    }, this);

    for (var i = 0; i < json.applications.length; i++) {
        var item = new ApplicationViewModel(json.applications[i]);
        this.applications.push(item);
    }
}

var init = function () {
/*
    jQuery.ajax('http://localhost/html/template.html', {
        success:function(response){
            jQuery("head").append(response);
        }
    });*/

    $.getJSON('/dashboard/config/petzi', null, function (responseData) {
        data.viewModel = new ApplicationListViewModel(responseData);
//        aViewModel.vendors(responseData.applications);
        ko.applyBindings(data.viewModel);
    });

};

jQuery(init);



    