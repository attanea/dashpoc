<!DOCTYPE html>
<html>
<head>
    <title>React JS sample</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="http://localhost/css/index.css" type="text/css"/>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/react-with-addons.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/JSXTransformer.js" type="text/javascript"></script>

    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>--%>
    <script type="text/javascript" src="http://localhost/js/index.js"></script>

    <link rel="stylesheet" type="text/css" href="http://localhost/css/styles.css" />
    <link rel="stylesheet" type="text/css" href="http://localhost/css/font-awesome-4.0.3/css/font-awesome.min.css">

    <script type="text/jsx" src="${pageContext.request.contextPath}/resources/jsx/dashboard.js"></script>
    <%--<script type="text/jsx" src="${pageContext.request.contextPath}/resources/jsx/emails.js"></script>--%>

    <script type="text/javascript">

    </script>

    <script type="text/html" id="app-template">
        <a class="dashboard_app_link" href="app_view.html">
            <div class="dashboard_app dashboard_box">
                <i data-bind="css: {'fa-star': favourite(), 'fa-star-o': !favourite()}" class="fa"></i>

                <div class="dashboard_app_icon">
                    <img src="http://localhost/img/app/icones_account_closing_64_44.png" data-bind="attr: {alt: name, title: name}"/>
                </div>
                <div class="dashboard_app_label" data-bind="text: name">app name</div>
            </div>
        </a>
    </script>

    <script type="text/html" id="application-template">
        <h3 data-bind="text: name"></h3>
        <p>Credits: <span data-bind="text: credits"></span></p>
    </script>

</head>
<body>
<%--<div id="content"></div>--%>

<div id="container">


    <!-- header -->
    <header>
        <!-- header top -->
        <hgroup id="header_top" class="yui3-g">
            <div class="yui3-u-1-2">
                <div id="header_top_left" class="line">
                    <a href="dashboard.html" alt="back to dashboard" title="back to dashboard"><img
                            src="http://localhost/img/A01_efg_ebanking_34px.png"/></a>
                </div>
            </div>
            <!-- yui3-u-1-2 -->

            <div class="yui3-u-1-2">
                <div class="line floatRight" id="header_top_right">
                    <a href="#">
                        <div class="floatLeft marginRight" id="header_notifs">2</div>
                    </a>

                    <div location="userProfile" class="floatLeft marginRight" style="">
                        <div class="v-label v-label-undef-w">xdsl</div>
                    </div>
                    <div location="userProfileIcon" class="floatLeft marginRight" style="">
                        <div tabindex="0" class="v-button v-button-link link" role="button">
                        <span class="v-button-wrap"><img alt="" class="v-icon" src=""><span
                                class="v-button-caption"></span></span></div>
                    </div>
                    | <a href="#"><i class="fa fa-sign-out"></i> Log out</a>
                </div>
            </div>
            <!-- yui3-u-1-2 -->
        </hgroup>
        <!-- yui3-g -->
    </header>

    <section id="page">

        <section id="content">
            <section class="yui3-g">

                <div class="yui3-u-2-3">
                    <div id="dashboard_welcome">
                        <h3>Welcome client</h3>
                    </div>
                </div>
                <!-- yui3-u-2-3 -->

                <div class="yui3-u-1-3">
                    <div id="alert_box" class="dashboard_box">
                        <h1>Alerts area</h1>
                    </div>
                </div>
                <!-- yui3-u-1-3 -->

            </section>
            <!-- yui3-g -->

            <section class="yui3-g">
                <div id="main-content" class="yui3-u-2-3">
                    <div id="apps_navigation">

                        <a class="dashboard_app_link" href="http://efginternational.com" target="_blank">
                            <div class="dashboard_app dashboard_box">
                                <i class="fa fa-star"></i>

                                <div class="dashboard_app_icon">
                                    <img src="http://localhost/img/app/icones_audit_findings_64_44.png"
                                         alt="EFG International"/>
                                </div>
                                <div class="dashboard_app_label">EFG International</div>
                            </div>
                        </a>

                        <a class="dashboard_app_link" href="/ext-js">
                            <div class="dashboard_app dashboard_box">
                                <i class="fa fa-star-o"></i>

                                <div class="dashboard_app_icon">
                                    <img src="http://localhost/img/app/icones_logbook_64_44.png" alt="extjs sample"/>
                                </div>
                                <div class="dashboard_app_label">Extjs</div>
                            </div>
                        </a>

                        <a class="dashboard_app_link" href="dataTable">
                            <div class="dashboard_app dashboard_box">
                                <i class="fa fa-star-o"></i>

                                <div class="dashboard_app_icon">
                                    <img src="http://localhost/img/app/icones_clients_groups_64_44.png"
                                         alt="dataTable sample"/>
                                </div>
                                <div class="dashboard_app_label">JQuery dataTable</div>
                            </div>
                        </a>

                        <div id="applications">
                            <%--<div data-bind="template: { name: 'app-template', foreach: filteredApplications }"></div>--%>
                        </div>

                    </div>
                </div>
                <div class="yui3-u-1-3">
                    <div id="widgets_area" class="dashboard_box">
                        <h1>Widgets area</h1>
                    </div>
                </div>
                <!-- yui3-u-1-3 -->
            </section>
        </section>

        <footer>
            <div id="footer_left" class="line">Copyright © 2014 EFG International. All rights reserved.
            </div>

            <div id="footer_right" class="line floatRight alignRight">
            </div>
        </footer>

    </section>
</div>
</body>

</html>
