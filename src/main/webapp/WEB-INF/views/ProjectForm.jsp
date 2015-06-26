<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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

    <title>New/Edit project</title>
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


<div align="center">
    <h1>New/Edit project</h1>
    <table>
        <form:form action="save" method="post" modelAttribute="project">
            <form:hidden path="idProjects"/>
            <tr>
                <td>Clients ID:</td>
                <td><form:select path="clName">
                    <form:options items="${project.clientsList}"></form:options>
                </form:select></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="projName"/></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input path="projDescription"/></td>
            </tr>
            <tr>
                <td>Status:</td>
                <td><form:input path="projStatus"/></td>
            </tr>
            <tr>
                <td>Priority:</td>
                <td><form:input path="projPriority"/></td>
            </tr>
            <tr>
                <td>Date started(yyyy-mm-dd):</td>
                <td><form:input id="datestartpicker" path="projDatestarted"/></td>
            </tr>
            <tr>
                <td>Date end (yyyy-mm-dd):</td>
                <td><form:input id="dateendpicker" path="projDateend"/></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="projPrice"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit"
                                                      value="Save"></td>
            </tr>
        </form:form>
    </table>
    <a href="/projects/">Back</a>

    <p>&nbsp;&nbsp;|&nbsp;&nbsp;</p><a href="/">Home</a>
</div>

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