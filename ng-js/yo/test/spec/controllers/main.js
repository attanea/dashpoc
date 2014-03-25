'use strict';

describe('Controller: MainCtrl', function () {

  // load the controller's module
  beforeEach(module('dashboardApp'));

  var MainCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of applications to the scope', function () {
    expect(scope.applications.length).toBe(30);
  });

    it('should attach a list of tags to the scope', function () {
        expect(scope.tags.length).toBe(9);
    });

});
