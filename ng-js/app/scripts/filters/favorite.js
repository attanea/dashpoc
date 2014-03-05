/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
  .filter('favorite', function () {
    return function (input) {
      return input ? 'fa-star-o' : 'fa-star';
    };
  });
