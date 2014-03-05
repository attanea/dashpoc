/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
  .controller('MainCtrl', function ($scope) {
    $scope.applications = [
        {'name':'Account Closing','image':'images/applications/icones_account_closing_64_44.png'},
        {'name':'Secure Mail','image':'images/applications/icones_secure_mail_64_44.png'}
    ];
  });
