/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
  .filter('favorite', function () {
    return function (input) {
      return input.indexOf('Favorite') > -1 ? 'fa-star' : 'fa-star-o';
    };
  });
