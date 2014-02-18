<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>DataTables example</title>
    <link rel="stylesheet" type="text/css" href="resources/css/demo_page.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/demo_table.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/ColReorder.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/ColVis.css"/>
    <script type="text/javascript" language="javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" language="javascript" src="resources/js/jquery.dataTables.js"></script>
    <script type="text/javascript" language="javascript" src="resources/js/FixedColumns.js"></script>
    <script type="text/javascript" language="javascript" src="resources/js/ColReorder.js"></script>
    <script type="text/javascript" language="javascript" src="resources/js/ColVis.js"></script>
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
            var oTable = $('#example').dataTable( {
                "sAjaxSource": "resources/data/aaData.json",
                "bProcessing": true,
                "bPaginate": false,
                "bFilter": false,
                "sDom": 'RC<"clear">lfrtip',
                "oColReorder": {
                    "iFixedColumns": 2
                },
                "aoColumnDefs": [
                    { "bVisible": false, "aTargets": [ 2 ] }
                ],
                "aoColumns": [
                    { "mData": "company" },
                    { "mData": "price" },
                    { "mData": "change" },
                    { "mData": "pctChange" },
                    { "mData": "lastChange" }
                ]
            });
            new FixedColumns( oTable, {
                "iLeftColumns": 2,
                "iLeftWidth": 350
            } );
        } );
    </script>
</head>

<body id="dt_example">
<div id="container">
    <div class="full_width big">
        DataTables dynamic creation example
    </div>

    <div id="dynamic">
        <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
            <thead>
            <tr>
                <th width="20%">Company</th>
                <th width="25%">Price</th>
                <th width="25%">Change</th>
                <th width="15%">PCT Change</th>
                <th width="15%">Last change</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td colspan="5" class="dataTables_empty">Loading data from server</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <th>Company</th>
                <th>Price</th>
                <th>Change</th>
                <th>PCT Change</th>
                <th>Last change</th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
</body>
</html>
