<%--
  Created by IntelliJ IDEA.
  User: Goran
  Date: 6/22/2015
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml"
>

<head>


    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Core CSS - Include with every page -->
    <link type="text/css" rel="stylesheet" href="../../resources/css/bootstrap-3.1.1.min.css"
          data-th-href="@{/resources/css/bootstrap-3.1.1.min.css}"/>

    <link type="text/css" rel="stylesheet" href="../../resources/font-awesome/css/font-awesome.css"
          data-th-href="@{/resources/font-awesome/css/font-awesome.css}"/>

    <!-- SB Admin CSS - Include with every page -->
    <link type="text/css" rel="stylesheet" href="../../resources/css/sb-admin.css"
          data-th-href="@{/resources/css/sb-admin.css}"/>

    <style>
        .no-border-on-me > thead > tr > th,
        .no-border-on-me > tbody > tr > th,
        .no-border-on-me > tfoot > tr > th,
        .no-border-on-me > thead > tr > td,
        .no-border-on-me > tbody > tr > td,
        .no-border-on-me > tfoot > tr > td {
            border-top-style: none;
            border-bottom-style: none;
        }
    </style>

    <link rel="stylesheet"
          href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/resources/style.css" type="text/css">
    <script>
        $(function () {
            $("#datestartpicker").datepicker({
                dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true
            });
        });
    </script>
    <script>
        $(function () {
            $("#dateendpicker").datepicker({
                dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true
            });
        });
    </script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title></title>
</head>
<body>


<!-- Header -->

<nav id="myNavbar" class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">FPM</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li class="dropdown"><a href="/clients/">Clients <b class="caret"></b></a>

                    <ul class="dropdown-menu">
                        <li><a href="/clients/new">New client</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown"><a href="/projects/">Projects <b class="caret"></b></a>

                    <ul class="dropdown-menu">
                        <li><a href="/projects/new">New project</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
</nav>


<form:form action="save" method="post" role="form" modelAttribute="project">
    <legend>New project</legend>

    <form:hidden path="idProjects"/>

    <div class="form-group">
    <label for="clientsIdClients">Clients ID</label>
    <form:input type="text" class="form-control" name="clientsIdClients" id="clientsIdClients" path="clientsIdClients"
                placeholder="Input...">
        </div>

        <button type="submit" class="btn btn-primary form-control">Submit</button>
        </form>


        <!-- ------------------ END ---------------------------- -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script type="text/javascript" src="../../resources/js/jquery-1.11.0.min.js"
        data-th-src="@{/resources/js/jquery-1.11.0.min.js}"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script type="text/javascript" src="../../resources/js/bootstrap-3.1.1.min.js"
        data-th-src="@{/resources/js/bootstrap-3.1.1.min.js}"></script>

        <!-- Core Scripts - Include with every page -->
        <script type="text/javascript" src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"
        data-th-src="@{/resources/js/plugins/metisMenu/jquery.metisMenu.js}"></script>

        <!-- SB Admin Scripts - Include with every page -->
        <script type="text/javascript" src="../../resources/js/sb-admin.js"
        data-th-src="@{/resources/js/sb-admin.js}"></script>
        </body>
        </html>
