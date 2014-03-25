'use strict';

angular.module('dashboardApp', [
  'ngRoute','pascalprecht.translate'
])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  })
    .config(function($translateProvider) {
        $translateProvider.translations('en', {
            application_account_closing: 'Account Closing',
            application_secure_mail: 'Secure Mail.',
            application_news: 'News',
            application_performances: 'Performances',
            application_misa34: 'MIS 3/4',
            application_hold_mail_val: 'Hold Mail',
            application_virtual_portfolio: 'Virtual Portfolio',
            application_oms: 'OMS',
            application_audit_findings: 'Audit Finding',
            application_stock_search: 'Stock Search',
            application_alert: 'Alert',
            application_career: 'Career',
            application_market_insights: 'Market Insights',
            application_directives: 'Directives',
            application_edoc: 'eDocument',
            application_misacof: 'MISACOF',
            application_forecast: 'Forecast',
            application_clients_groups: 'Clients Groups',
            application_world_news: 'World News',
            application_account_opening: 'Account Opening',
            application_cash_accounts: 'Cash Accounts',
            application_logbook: 'Log Book',
            application_inv_structure: 'Invstement Structure',
            application_orders: 'Orders',
            application_directory: 'Directory',
            application_positions: 'Positions',
            application_client_info: 'Client Information',
            application_delegation: 'Delegation',
            application_home: 'Home',
            application_client_validation: 'Client Validation',

            tag_all: 'All',
            tag_favorite: 'My favorites',
            tag_banking: 'Banking',
            tag_investment: 'Investment',
            tag_admin: 'Admin',
            tag_audit: 'Audit / Reporting',
            tag_communication: 'Communication',
            tag_employee: 'Employee',
            tag_it: 'IT / Support',
            tag_website: 'EFG websites'
        });
        $translateProvider.preferredLanguage('en');

    });