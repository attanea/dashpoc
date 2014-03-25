/* jshint indent: false */

'use strict';

angular.module('dashboardApp')
    .controller('MainCtrl', function ($scope) {
        $scope.applications = [
            {'code': 'account_closing', 'tags': ['banking', 'admin', 'favorite']},
            {'code': 'secure_mail', 'tags': ['communication']},
            {'code': 'news', 'tags': ['it']},
            {'code': 'performances', 'tags': ['banking']},
            {'code': 'misa34', 'tags': ['employee']},
            {'code': 'hold_mail_val', 'tags': ['banking']},
            {'code': 'virtual_portfolio', 'tags': ['banking', 'investment', 'favorite']},
            {'code': 'oms', 'tags': ['employee']},
            {'code': 'audit_findings', 'tags': ['audit']},
            {'code': 'stock_search', 'tags': ['banking', 'investment']},
            {'code': 'alert', 'tags': ['banking']},
            {'code': 'career', 'tags': ['employee', 'communication']},
            {'code': 'market_insights', 'tags': ['employee', 'communication']},
            {'code': 'directives', 'tags': ['employee']},
            {'code': 'edoc', 'tags': ['banking']},
            {'code': 'misacof', 'tags': ['employee']},
            {'code': 'forecast', 'tags': ['banking', 'investment']},
            {'code': 'clients_groups', 'tags': ['banking']},
            {'code': 'world_news', 'tags': ['communication']},
            {'code': 'account_opening', 'tags': ['banking', 'admin']},
            {'code': 'cash_accounts', 'tags': ['banking', 'investment']},
            {'code': 'logbook', 'tags': ['it']},
            {'code': 'inv_structure', 'tags': []},
            {'code': 'orders', 'tags': ['banking', 'investment']},
            {'code': 'directory', 'tags': ['employee']},
            {'code': 'positions', 'tags': ['banking', 'investment']},
            {'code': 'client_info', 'tags': ['banking']},
            {'code': 'delegation', 'tags': ['banking']},
            {'code': 'home', 'tags': ['banking']},
            {'code': 'client_validation', 'tags': ['banking', 'investment']}
        ];

        $scope.tags = [
            {'code': 'favorite'},
            {'code': 'banking'},
            {'code': 'investment'},
            {'code': 'admin'},
            {'code': 'audit'},
            {'code': 'communication'},
            {'code': 'employee'},
            {'code': 'it'},
            {'code': 'website'}
        ];

    });
