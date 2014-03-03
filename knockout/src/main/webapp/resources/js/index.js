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
    var self = this;
    self.applications = ko.observableArray();

    for (var i = 0; i < json.applications.length; i++) {
        var item = new ApplicationViewModel(json.applications[i]);
        self.applications.push(item);
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



    