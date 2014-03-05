/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
  .controller('MainCtrl', function ($scope) {
    $scope.applications = [
        {'name':'Account Closing','image':'images/applications/icones_account_closing_64_44.png', 'tags': ['Banking','Admin', 'Favorite']},
        {'name':'Secure Mail','image':'images/applications/icones_secure_mail_64_44.png', 'tags': ['Communication']},
        {'name':'News','image':'images/applications/icones_news_64_44.png', 'tags': ['IT']},
        {'name':'Performances','image':'images/applications/icones_performances_64_44.png', 'tags': ['Banking']},
        {'name':'MIS 3/4','image':'images/applications/icones_misa34_64_44.png', 'tags': ['Employee']},
        {'name':'Hold Mail','image':'images/applications/icones_hold_mail_val_64_44.png', 'tags': ['Banking']},
        {'name':'Virtual Portfolio','image':'images/applications/icones_virtual_portfolio_64_44.png', 'tags': ['Banking','Investment', 'Favorite']},
        {'name':'OMS','image':'images/applications/icones_OMS_64_44.png', 'tags': ['Employee']},
        {'name':'Audit Finding','image':'images/applications/icones_audit_findings_64_44.png', 'tags': ['Audit']},
        {'name':'Stock Search','image':'images/applications/icones_stock_search_64_44.png', 'tags': ['Banking','Investment']},
        {'name':'Alert','image':'images/applications/icones_alert_64_44.png', 'tags': ['Banking']},
        {'name':'Career','image':'images/applications/icones_career_64_44.png', 'tags': ['Employee','Communication']},
        {'name':'Market Insights','image':'images/applications/icones_market_insights_64_44.png', 'tags': ['Employee','Communication']},
        {'name':'Directives','image':'images/applications/icones_directives_64_44.png', 'tags': ['Employee']},
        {'name':'eDocument','image':'images/applications/icones_edoc_64_44.png', 'tags': ['Banking']},
        {'name':'MISACOF','image':'images/applications/icones_misacof_64_44.png', 'tags': ['Employee']},
        {'name':'Forecast','image':'images/applications/icones_forecast_64_44.png', 'tags': ['Banking','Investment']},
        {'name':'Clients Groups','image':'images/applications/icones_clients_groups_64_44.png', 'tags': ['Banking']},
        {'name':'Wold News','image':'images/applications/icones_world_news_64_44.png', 'tags': ['Communication']},
        {'name':'Account Opening','image':'images/applications/icones_account_opening_64_44.png', 'tags': ['Banking','Admin']},
        {'name':'Cash Accounts','image':'images/applications/icones_cash_accounts_64_44.png', 'tags': ['Banking','Investment']},
        {'name':'Log Book','image':'images/applications/icones_logbook_64_44.png', 'tags': ['IT']},
        {'name':'Invstement Structure','image':'images/applications/icones_inv_structure_64_44.png', 'tags': []},
        {'name':'Orders','image':'images/applications/icones_orders_64_44.png', 'tags': ['Banking','Investment']},
        {'name':'Directory','image':'images/applications/icones_directory_64_44.png', 'tags': ['Employee']},
        {'name':'Positions','image':'images/applications/icones_positions_64_44.png', 'tags': ['Banking','Investment']},
        {'name':'Client Information','image':'images/applications/icones_client_info_64_44.png', 'tags': ['Banking']},
        {'name':'Delegation','image':'images/applications/icones_delegation_64_44.png', 'tags': ['Banking']},
        {'name':'Home','image':'images/applications/icones_home_64_44.png', 'tags': ['Banking']},
        {'name':'Client Validation','image':'images/applications/icones_client_validation_64_44.png ', 'tags': ['Banking','Investment']}
    ];
  });
