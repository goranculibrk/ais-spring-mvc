<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
            xmlns:th="http://www.thymeleaf.org">
 
<head>
        
    <meta charset="utf-8"/>
        
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
     
        <!-- Core CSS - Include with every page -->
        
    <link type="text/css" rel="stylesheet" href="../../../resources/css/bootstrap-3.1.1.min.css"
                  data-th-href="@{/resources/css/bootstrap-3.1.1.min.css}"/>
             
        
    <link type="text/css" rel="stylesheet" href="../../../resources/font-awesome/css/font-awesome.css"
                  data-th-href="@{/resources/font-awesome/css/font-awesome.css}"/>
     
        <!-- SB Admin CSS - Include with every page -->
        
    <link type="text/css" rel="stylesheet" href="../../../resources/css/sb-admin.css"
                  data-th-href="@{/resources/css/sb-admin.css}"/>
         
        
    <style>
                .no-border-on-me > thead > tr > th,
                .no-border-on-me > tbody > tr > th,
                .no-border-on-me > tfoot > tr > th,
                .no-border-on-me > thead > tr > td,
                .no-border-on-me > tbody > tr > td,
                .no-border-on-me > tfoot > tr > td
            </style>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
              
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
              
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->
             
         <title>SB-Admin</title>  
</head>
 
<body>
    
<div id="wrapper">
     
            
    <nav data-th-fragment="top-nav" class="navbar navbar-default navbar-static-top" style="margin-bottom: 0">
                    
        <div class="navbar-header">
                            
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                
            </button>
                            <a class="navbar-brand" href="#">Option Algo System</a>
                        
        </div>
                    <!-- /.navbar-header -->
         
                    
        <ul class="nav navbar-top-links navbar-right">
                                
            <li><a href="/"            >Home</a></li>
                                
            <li><a href="/trading"     >Clients</a></li>
                                
            <li><a href="/backtesting">Projects</a></li>

                        
        </ul>
          <!-- /.navbar-top-links -->
                
    </nav>
         <!-- /.navbar-static-top -->
     
            
    <nav data-th-fragment="vert-nav-admin" class="navbar-default navbar-static-side">
                    
        <div class="sidebar-collapse">
                            
            <ul class="nav" id="side-menu">
                                    
                <li>
                                            <a href="/roles"><i class="fa fa-lock fa-fw"></i> Roles</a>
                                        
                </li>
                                    
                <li>
                                            <a href="/users"><i class="fa fa-user fa-fw"></i> Users</a>
                                        
                </li>
                                    
                <li>
                                            <a href="/accounts"><i class="fa fa-tasks fa-fw"></i> Accounts</a>
                                        
                </li>
                                    
                <li>
                                            <a href="/strategy"><i class="fa fa-gears fa-fw"></i> Strategies<span
                        class="fa arrow"></span></a>
                                            
                    <ul class="nav nav-second-level">
                                                    
                        <li>
                                                            <a href="/strategy/list">Strategy List</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="/strategy/settings">Strategy Settings</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="/strategy/run">Strategy Run</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="/strategy/account">Strategy Account</a>
                                                        
                        </li>
                                                
                    </ul>
                                            <!-- /.nav-second-level -->
                                        
                </li>
                                    
                <li>
                                            <a href="/trade/details"><i class="fa fa-tachometer fa-fw"></i> Trade
                    Details<span class="fa arrow"></span></a>
                                            
                    <ul class="nav nav-second-level">
                                                    
                        <li>
                                                            <a href="#">Orders</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="#">Fills</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="#">Transactions</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="#">Positions</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="#">Position Details</a>
                                                        
                        </li>
                                                
                    </ul>
                                            <!-- /.nav-second-level -->
                                        
                </li>
                                    
                <li class="active">
                                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Trade Summaries<span
                        class="fa arrow"></span></a>
                                            
                    <ul class="nav nav-second-level">
                                                    
                        <li>
                                                            <a href="#">Trade Summary</a>
                                                        
                        </li>
                                                    
                        <li>
                                                            <a href="#">Trade Details</a>
                                                        
                        </li>
                                                
                    </ul>
                                            <!-- /.nav-second-level -->
                                        
                </li>
                                
            </ul>
            <!-- /#side-menu -->
                        
        </div>
            <!-- /.sidebar-collapse -->
                
    </nav>
            <!-- /.navbar-static-side -->
     
            
    <div id="page-wrapper">
                    
        <div class="row">
                            
            <div class="col-lg-12">
                                    <h1 class="page-header">Blank</h1>
                                
            </div>
                            <!-- /.col-lg-12 -->
                        
        </div>
                    <!-- /.row -->
                
    </div>
            <!-- /#page-wrapper -->
     
        
</div>
    <!-- /#wrapper -->
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
<script src="../../../resources/js/jquery-1.11.0.min.js"
                data-th-href="@{/resources/js/jquery-1.11.0.min.js}"></script>
         
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
<script src="../../../resources/js/bootstrap-3.1.1.min.js"
                data-th-href="@{/resources/js/bootstrap-3.1.1.min.js}"></script>
 
    <!-- Core Scripts - Include with every page -->
    
<script src="../../../resources/js/plugins/metisMenu/jquery.metisMenu.js"
                data-th-href="@{/resources/js/plugins/metisMenu/jquery.metisMenu.js}"></script>
         
    <!-- SB Admin Scripts - Include with every page -->
    
<script src="../../../resources/js/sb-admin.js"
                data-th-href="@{/resources/js/sb-admin.js}"></script>
 
</body>
</html>