<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Shared assets -->
<%--<link rel="stylesheet" type="text/css" href="http://localhost/examples/responsive/../_shared/css/style.css">--%>

<!-- Example assets -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jcarousel.responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout.css">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.jcarousel.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jcarousel.responsive.js"></script>
<style>
    #apps_nav .jcarousel li {
        width: auto;
    }

    .jcarousel-wrapper {
        float: left;
        width: 90%;

        margin: 0;
        position: relative;
        border: 0;
        -webkit-border-radius: 0;
        -moz-border-radius: 0;
        border-radius: 0;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
    }

    .jcarousel-control-next {
        right: -10px;
    }

    .jcarousel-control-prev {
        left: -10px
    }
</style>
<div>
<header>
    <nav id="apps_nav" class="yui3-g dashboard_box">
        <a class="nav_menu_app_link" href="/dashboard">
            <div id="home" class="nav_menu_item nav_menu_app">
                <div class="app_container">
                    <div class="nav_menu_app_icon"></div>
                    <div class="nav_menu_app_label">Home</div>
                </div>
            </div>
        </a>

        <div class="jcarousel-wrapper">
            <div class="yui3-u-1 jcarousel">

                <ul>
                    <li><a class="nav_menu_app_link" href="#">
                        <div id="client_groups" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Client<br>Groups</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link selected" href="#">
                        <div id="client_info" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Client<br>Information</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link" href="#">
                        <div id="inv_structure" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Investment<br>structure</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link" href="#">
                        <div id="cash_accounts" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Cash<br>Accounts</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link" href="#">
                        <div id="positions" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Positions</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link" href="#">
                        <div id="forecast" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Forecast</div>
                            </div>
                        </div>
                    </a></li>

                    <li><a class="nav_menu_app_link" href="#">
                        <div id="performances" class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Performances</div>
                            </div>
                        </div>
                    </a></li>
                    <li><a class="nav_menu_app_link" href="#">
                        <div class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Performances</div>
                            </div>
                        </div>
                    </a></li>
                    <li><a class="nav_menu_app_link" href="#">
                        <div class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Performances</div>
                            </div>
                        </div>
                    </a></li>
                    <li><a class="nav_menu_app_link" href="#">
                        <div class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Performances</div>
                            </div>
                        </div>
                    </a></li>
                    <li><a class="nav_menu_app_link" href="#">
                        <div class="nav_menu_item nav_menu_app">
                            <div class="app_container">
                                <div class="nav_menu_app_icon"></div>
                                <div class="nav_menu_app_label">Performances</div>
                            </div>
                        </div>
                    </a></li>
                </ul>


            </div>
            <a class="nav_menu_app_link jcarousel-control-prev" href="#">
                <div class="nav_menu_item nav_menu_btn">
                    <div class="nav_menu_btn_left"></div>
                </div>
            </a>
            <a class="nav_menu_app_link jcarousel-control-next" href="#">
                <div class="nav_menu_item nav_menu_btn floatRight">
                    <div class="nav_menu_btn_right"></div>
                </div>
            </a>

            <%--<a href="#" class="jcarousel-control-prev">&lsaquo;</a>--%>
            <%--<a href="#" class="jcarousel-control-next">&rsaquo;</a>--%>


            <p class="jcarousel-pagination"></p>
        </div>
        <!-- yui3-u-1 -->


    </nav>
    <!-- yui3-g -->
</header>
<%--<div class="jcarousel-wrapper">--%>
<%--<div class="jcarousel">--%>
<%--<ul>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_account_closing_64_44.png"--%>
<%--alt="App 1 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 1 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star-o"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_secure_mail_64_44.png"--%>
<%--alt="App 2 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 2 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star-o"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_logbook_64_44.png"--%>
<%--alt="App 3 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 3 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star-o"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_logbook_64_44.png"--%>
<%--alt="App 3 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 3 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star-o"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_logbook_64_44.png"--%>
<%--alt="App 3 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 3 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--<li><a class="dashboard_app_link" href="app_view.html">--%>
<%--<div class="dashboard_app dashboard_box">--%>
<%--<i class="fa fa-star-o"></i>--%>

<%--<div class="dashboard_app_icon">--%>
<%--<img src="${pageContext.request.contextPath}/resources/img/app/icones_logbook_64_44.png"--%>
<%--alt="App 3 name"/>--%>
<%--</div>--%>
<%--<div class="dashboard_app_label">App 3 name</div>--%>
<%--</div>--%>
<%--</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<a href="#" class="jcarousel-control-prev">&lsaquo;</a>--%>
<%--<a href="#" class="jcarousel-control-next">&rsaquo;</a>--%>

<%--<p class="jcarousel-pagination"></p>--%>
<%--</div>--%>
</div>