<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="resources/css/ext-all.css" type="text/css"/>
    <script src="resources/js/ext-all.js" type="text/javascript"></script>
    <%--                                                                       --%>
    <%--    <script src="resources/grid1.js" type="text/javascript"></script>  --%>
    <%--    <script src="resources/grid2.js" type="text/javascript"></script>  --%>
    <%--    <script src="resources/grid3.js" type="text/javascript"></script>  --%>
    <script src="resources/js/grid4.js" type="text/javascript"></script>
    <%--<script src="http://localhost/examples/grid4.js" type="text/javascript"></script>--%>
    <%--    <script src="resources/grid5.js" type="text/javascript"></script>       --%>
    <%--    <script src="resources/grid6.js" type="text/javascript"></script>       --%>
    <%--    <script src="resources/grid7.js" type="text/javascript"></script>       --%>
    <%--    <script src="resources/grid8.js" type="text/javascript"></script>       --%>
    <%--    <script src="resources/grid9.js" type="text/javascript"></script>       --%>
    <style>
        .page-wrapper {
            max-width: 1000px;
            padding: 0 20px 40px 20px;
            margin: auto;
        }
        #app-carousel{
            height: 80px;
        }
        #app-carousel .jcarousel li{
            width: auto;
        }
        #app-carousel #apps_nav {
            margin: 0;
        }
        #app-carousel .jcarousel ul{
            left: -10px;
        }
    </style>
    <script type="text/javascript">
        Ext.onReady(function(){
            var loadMask = new Ext.LoadMask(Ext.get('app-carousel'), {msg: "Please wait..."});
            Ext.get('app-carousel').load({
                url : '/dashboard/carousel/',
                scripts : true,
                success: function(response){
                    loadMask.hide();
                }
            });

           /* Ext.Ajax.request({
                url: '/dashboard/carousel/',
                params: {
                    id: 1
                },
                success: function(response){
                    var text = response.responseText;
                    // process server response here
                }
            });*/
        })
    </script>

</head>
<body>
<%--<p>Простая таблица grid и хранилище Ext.data.ArrayStore</p>
<div id="grid1"></div>
<br/>
<p>Меняем хранилище на Ext.data.Store</p>
<div id="grid2"></div>
<br/>
<p>Добавляем модель</p>
<div id="grid3"></div>
<br/>--%>
<%--<p>Добавляем динамическую загрузку данных</p>--%>
<div class="page-wrapper">

    <div id="app-carousel">

    </div>
    <p>With dynamic data loading</p>

    <div id="grid4"></div>
    <br/></div>
<%--<p>Добавляем пагинацию</p>
<div id="grid5"></div>
<br/>
<p>Сортируем на сервере</p>
<div id="grid6"></div>
<br/>
<p>Добавляем фильтры</p>
<div id="grid7"></div>
<br/>
<p>Фильтрация на сервере</p>
<div id="grid8"></div>
<br/>
<p>Наводим порядок</p>--%>
<%--<div id="grid9"></div>--%>
</body>
</html>
