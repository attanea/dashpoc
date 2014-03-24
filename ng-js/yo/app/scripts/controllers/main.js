/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
  .controller('MainCtrl', function ($scope) {
    $scope.applications = [
        {'name':'Account Closing','code':'account_closing', 'tags': ['Banking','Admin', 'Favorite']},
        {'name':'Secure Mail','code':'secure_mail', 'tags': ['Communication']},
        {'name':'News','code':'news', 'tags': ['IT']},
        {'name':'Performances','code':'performances', 'tags': ['Banking']},
        {'name':'MIS 3/4','code':'misa34', 'tags': ['Employee']},
        {'name':'Hold Mail','code':'hold_mail_val', 'tags': ['Banking']},
        {'name':'Virtual Portfolio','code':'virtual_portfolio', 'tags': ['Banking','Investment', 'Favorite']},
        {'name':'OMS','code':'OMS', 'tags': ['Employee']},
        {'name':'Audit Finding','code':'audit_findings', 'tags': ['Audit']},
        {'name':'Stock Search','code':'stock_search', 'tags': ['Banking','Investment']},
        {'name':'Alert','code':'alert', 'tags': ['Banking']},
        {'name':'Career','code':'career', 'tags': ['Employee','Communication']},
        {'name':'Market Insights','code':'market_insights', 'tags': ['Employee','Communication']},
        {'name':'Directives','code':'directives', 'tags': ['Employee']},
        {'name':'eDocument','code':'edoc', 'tags': ['Banking']},
        {'name':'MISACOF','code':'misacof', 'tags': ['Employee']},
        {'name':'Forecast','code':'forecast', 'tags': ['Banking','Investment']},
        {'name':'Clients Groups','code':'clients_groups', 'tags': ['Banking']},
        {'name':'Wold News','code':'world_news', 'tags': ['Communication']},
        {'name':'Account Opening','code':'account_opening', 'tags': ['Banking','Admin']},
        {'name':'Cash Accounts','code':'cash_accounts', 'tags': ['Banking','Investment']},
        {'name':'Log Book','code':'logbook', 'tags': ['IT']},
        {'name':'Invstement Structure','code':'inv_structure', 'tags': []},
        {'name':'Orders','code':'orders', 'tags': ['Banking','Investment']},
        {'name':'Directory','code':'directory', 'tags': ['Employee']},
        {'name':'Positions','code':'positions', 'tags': ['Banking','Investment']},
        {'name':'Client Information','code':'client_info', 'tags': ['Banking']},
        {'name':'Delegation','code':'delegation', 'tags': ['Banking']},
        {'name':'Home','code':'home', 'tags': ['Banking']},
        {'name':'Client Validation','code':'client_validation_64_44.png ', 'tags': ['Banking','Investment']}
    ];
  });
