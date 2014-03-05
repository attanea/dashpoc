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
    var array = ['Banking','Investment', 'Favorite'];
    expect(favorite(array)).toBe('fa-star');
  });

    it('should return the not favorite class"', function () {
        var array = ['Banking','Investment'];
        expect(favorite(array)).toBe('fa-star-o');
    });

});
