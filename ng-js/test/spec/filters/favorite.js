/* jshint indent: false */

'use strict';

describe('Filter: favorite', function () {

  // load the filter's module
  beforeEach(module('dashboardApp'));

  // initialize a new instance of the filter before each test
  var favorite;
  beforeEach(inject(function ($filter) {
    favorite = $filter('favorite');
  }));

  it('should return the favorite class"', function () {
    var text = true;
    expect(favorite(text)).toBe('fa-star-o');
  });

    it('should return the not favorite class"', function () {
        var text = false;
        expect(favorite(text)).toBe('fa-star');
    });

});
