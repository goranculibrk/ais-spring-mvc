<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Core CSS - Include with every page -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-3.1.1.min.css"/>"
          data-th-href="@{/resources/css/bootstrap-3.1.1.min.css}"/>

    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>"
          data-th-href="@{/resources/font-awesome/css/font-awesome.css}"/>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/style.css" type="text/css">
    <script>
        $(function ($) {
            $("#datepicker").datepicker({
                dateFormat: "yy-mm-dd", changeMonth: true, changeYear: true
            });
        });
    </script>

    <title>New Client</title>
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
                        <li><a href="/project   s/new">New project</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
</nav>


<div align="center">

    <form:form action="save" method="post" class="form-vertical" modelAttribute="client">

        <form:hidden path="idClients"/>
        <t:input path="clName" id="clName" label="Clients Name"/>
        <t:input path="clEmail" label="Email"/>
        <t:input path="clWebsite" label="Website"/>
        <t:input path="clPhone" label="Phone"/>
        <t:input path="clAddress" label="Address"/>
        <t:input path="clCountry" label="Country"/>
        <t:input path="clCurrency" label="Currency"/>
        <t:input path="clStatus" label="Status"/>
        <t:input id="datepicker" path="clDatestarted" label="Date started"/>

        <input type="submit" class="btn btn-primary btn-sm" value="Save">
    </form:form>

</div>


<!-- --------------------END------------------------- -->
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