<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/FeedEk.js"/>"></script>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/FeedEk.css"/> "/>
    <script type="application/javascript">
        $(document).ready(function ($) {
            $('#divRss').FeedEk({
                FeedUrl: 'http://www.guru.com/rss/jobs/q/marketing/',
                MaxCount: 4
            });
        });
    </script>

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
    <title>Clients</title>
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

<div class="col-xs-12 col-sm-12 col-md-1 col-lg-1">
    <ul class="nav nav-pills nav-stacked">
        <li role="presentation"><a href="/projects/">Projects</a></li>
        <li role="presentation"><a href="#">Invoices</a></li>
        <li role="presentation"><a href="#">Total debt</a></li>
    </ul>
</div>
<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9"> <!-- content wrapper -->
    <div align="center">
        <h1>Project list</h1>

        <h2>
            <a href="/projects/new" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span> New
                project</a>
        </h2>

        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Client ID</th>
                    <th>ProjectID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Priority</th>
                    <th>Date Started</th>
                    <th>Date End</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="test" items="${projectsList}" varStatus="status">

                    <tr>
                        <td>${status.index+1}</td>
                        <td>${test.clientsIdClients}</td>
                        <td>${test.idProjects}</td>
                        <td>${test.projName}</td>
                        <td>${test.projDescription}</td>
                        <td>${test.projStatus}</td>
                        <td>${test.projPriority}</td>
                        <td>${test.projDatestarted}</td>
                        <td>${test.projDateend}</td>
                        <td>${test.projPrice}</td>
                        <td><a href="/projects/edit-project?id=${test.idProjects}" class="btn btn-primary btn-sm"><span
                                class="glyphicon glyphicon-edit"></span> Edit</a>
                            <a href="/projects/delete?id=${test.idProjects}" class="btn btn-danger btn-sm"><span
                                    class="glyphicon glyphicon-remove"></span> Delete</a></td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

<div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
	<!-- Right sidebar -->
    <div style="height: 50%" id="divRss"></div>
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