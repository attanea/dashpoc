<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EFG International | eBanking</title>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="resources/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
    <link rel="stylesheet" type="text/css" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
    <!--
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/text.css" />
    <link rel="stylesheet" type="text/css" href="css/cssgrids.css" />
    <link rel="stylesheet" type="text/css" href="css/reindeer_styles.css" />
    <link rel="stylesheet" type="text/css" href="css/buttons.css" />
    <link rel="stylesheet" type="text/css" href="css/tables.css" />
    -->

    <!--
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="js/highdpi.js"></script>
    -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://underscorejs.org/underscore.js"></script>
    <script src="http://backbonejs.org/backbone.js"></script>
    <script src="resources/js/dashboard.js"></script>

    <!--[if lt IE 9]><script src="resources/js/html5.js"></script><![endif]-->
    <meta name="Generator" content="">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">

    <script type="content/template" id="app-template">
        <a class="dashboard_app_link" href="app_view.html">
            <div class="dashboard_app dashboard_box">
                <@ if(favourite) { @>
                <i class="fa fa-star"></i>
                <@ } else { @>
                <i class="fa fa-star-o"></i>
                <@ } @>
                <div class="dashboard_app_icon">
                    <img src="resources/img/app/icones_account_closing_64_44.png" alt="<@=name@>" />
                </div>
                <div class="dashboard_app_label"><@=name@></div>
            </div>
        </a>
    </script>

    <script type="content/template" id="filter-template">
        <@ if(selected) { @>
        <li><a href="#" class="selected"><@=name@></a></li>
        <@ } else { @>
        <li><a href="#"><@=name@></a></li>
        <@ } @>

    </script>
</head>

<body>
<div id="container">


<!-- header -->
<header>

    <!-- header top -->
    <hgroup id="header_top" class="yui3-g">
        <div class="yui3-u-1-2">
            <div id="header_top_left" class="line">&nbsp;</div>
        </div><!-- yui3-u-1-2 -->

        <div class="yui3-u-1-2">
            <div class="line floatRight" id="header_top_right">
                <a href="#"><div class="floatLeft marginRight" id="header_notifs">2</div></a>
                <div location="userProfile" class="floatLeft marginRight" style=""><div class="v-label v-label-undef-w">xdsl</div></div>
                <div location="userProfileIcon" class="floatLeft marginRight" style=""><div tabindex="0" class="v-button v-button-link link" role="button"><span class="v-button-wrap"><img alt="" class="v-icon" src=""><span class="v-button-caption"></span></span></div></div> | <a href="#"><i class="fa fa-sign-out"></i> Log out</a>
            </div>
        </div><!-- yui3-u-1-2 -->
    </hgroup><!-- yui3-g -->

</header>

<section id="page">
<header>
    <!-- header bottom -->
    <hgroup id="header_bottom" class="yui3-g">
        <div class="yui3-u-1-2">
            <div id="logo" class="valignMiddle line">
                <a href="dashboard.html" alt="back to dashboard" title="back to dashboard">
                    <img src="resources/img/A01_efg_ebanking_34px.png"/>
                </a>
            </div>
        </div><!-- yui3-u-1-2 -->

        <div class="yui3-u-1-2">
            <div id="header_bottom_right" class="floatRight alignRight valignMiddle line">
            </div>
        </div><!-- yui3-u-1-2 -->
    </hgroup><!-- yui3-g -->

</header>

<section id="content">
<section class="yui3-g">

    <div class="yui3-u-2-3">
        <div id="welcome_box" class="dashboard_box">

            <div id="content_left_top_1">
                <h1>Welcome <a href="#">CRO 223</a></h1>
                <p>Your total AUM as of 15:45 on 07.09.2012</p>
                <h1>USD <b>15,200,000</b></h1>
                <h1><a href="#">38 Clients</a></h1>
            </div>

            <div id="content_left_top_2">
                <h4>My favorite portfolios</h4>
                <table class="horizontal_separators">
                    <tr><td><a href="#">Portfolio 1</a></td></tr>
                    <tr><td><a href="#">Portfolio 2</a></td></tr>
                    <tr><td><a href="#">Portfolio 3</a></td></tr>
                    <tr><td><a href="#">Portfolio 4</a></td></tr>
                </table>
            </div>
        </div>


    </div><!-- yui3-u-2-3 -->

    <div class="yui3-u-1-3">
        <div id="alert_box" class="dashboard_box">
            <h1>Alerts area</h1>
        </div>
    </div><!-- yui3-u-1-3 -->

</section><!-- yui3-g -->

<section class="yui3-g">
<div class="yui3-u-2-3">
<div id="app_filters">
    <ul id="filter_list">
        <li><a href="#" class="selected">All</a></li>
        <li><a href="dashboard_favorite_apps.html"><i class="fa fa-star"></i> My favorites</a></li>
        <li><a href="#">Banking</a></li>
        <li><a href="#">Investment</a></li>
        <li><a href="#">Admin</a></li>
        <li><a href="#">Audit / Reporting</a></li>
        <li><a href="#">Communication</a></li>
        <li><a href="#">Employee</a></li>
        <li><a href="#">IT / Support</a></li>
        <li><a href="#">EFG websites</a></li>
    </ul>
    <input type="text" id="app_search" /><i class="fa fa-search"></i>
</div>



<div id="apps_navigation">

<div id="applications"></div>

<%--<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_account_closing_64_44.png" alt="App 1 name" />
        </div>
        <div class="dashboard_app_label">App 1 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_secure_mail_64_44.png" alt="App 2 name" />
        </div>
        <div class="dashboard_app_label">App 2 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_logbook_64_44.png" alt="App 3 name" />
        </div>
        <div class="dashboard_app_label">App 3 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_delegation_64_44.png" alt="App 4 name" />
        </div>
        <div class="dashboard_app_label">App 4 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_clients_groups_64_44.png" alt="App 5 name" />
        </div>
        <div class="dashboard_app_label">App 5 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_client_validation_64_44.png" alt="App 6 name" />
        </div>
        <div class="dashboard_app_label">App 6 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_client_info_64_44.png" alt="App 7 name" />
        </div>
        <div class="dashboard_app_label">App 7 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_career_64_44.png" alt="App 8 name" />
        </div>
        <div class="dashboard_app_label">App 8 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_audit_findings_64_44.png" alt="App 9 name" />
        </div>
        <div class="dashboard_app_label">App 9 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_stock_search_64_44.png" alt="App 10 name" />
        </div>
        <div class="dashboard_app_label">App 10 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_hold_mail_val_64_44.png" alt="App 11 name" />
        </div>
        <div class="dashboard_app_label">App 11 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_misacof_64_44.png" alt="App 12 name" />
        </div>
        <div class="dashboard_app_label">App 12 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_misa34_64_44.png" alt="App 13 name" />
        </div>
        <div class="dashboard_app_label">App 13 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_cash_accounts_64_44.png" alt="App 14 name" />
        </div>
        <div class="dashboard_app_label">App 14 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_news_64_44.png" alt="App 15 name" />
        </div>
        <div class="dashboard_app_label">App 15 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_inv_structure_64_44.png" alt="App 16 name" />
        </div>
        <div class="dashboard_app_label">App 16 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_positions_64_44.png" alt="App 17 name" />
        </div>
        <div class="dashboard_app_label">App 17 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_OMS_64_44.png" alt="App 18 name" />
        </div>
        <div class="dashboard_app_label">App 18 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_orders_64_44.png" alt="App 19 name" />
        </div>
        <div class="dashboard_app_label">App 19 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_forecast_64_44.png" alt="App 20 name" />
        </div>
        <div class="dashboard_app_label">App 20 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_directives_64_44.png" alt="App 21 name" />
        </div>
        <div class="dashboard_app_label">App 21 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_home_64_44.png" alt="App 22 name" />
        </div>
        <div class="dashboard_app_label">App 22 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_edoc_64_44.png" onmouseover="this.src='resources/img/app/icones_edoc_64_66003D.png'" onmouseout="this.src='resources/img/app/icones_edoc_64_44.png'" alt="App 23 name" />
        </div>
        <div class="dashboard_app_label">App 23 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_alert_64_44.png" alt="App 24 name" />
        </div>
        <div class="dashboard_app_label">App 24 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_world_news_64_44.png" alt="App 25 name" />
        </div>
        <div class="dashboard_app_label">App 25 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_virtual_portfolio_64_44.png" alt="App 26 name" />
        </div>
        <div class="dashboard_app_label">App 26 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_directory_64_44.png" alt="App 27 name" />
        </div>
        <div class="dashboard_app_label">App 27 name</div>
    </div>
</a>
<a class="dashboard_app_link" href="app_view.html">
    <div class="dashboard_app dashboard_box">
        <i class="fa fa-star-o"></i>
        <div class="dashboard_app_icon">
            <img src="resources/img/app/icones_performances_64_44.png" alt="App 28 name" />
        </div>
        <div class="dashboard_app_label">App 28 name</div>
    </div>
</a>--%>
</div>
</div>
<div class="yui3-u-1-3">
    <div id="widgets_area" class="dashboard_box">
        <h1>Widgets area</h1>
    </div>
</div><!-- yui3-u-1-3 -->
</section>
</section>

<footer>
    <div id="footer_left" class="line">Copyright © 2014 EFG International. All rights reserved.
    </div>

    <div id="footer_right" class="line floatRight alignRight">
    </div>
</footer>

</div>
</body>
</html>
