<%-- 
    Document   : index
    Created on : Oct 16, 2016, 1:10:43 PM
    Author     : nisalsp9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Panadura Divisional Secretarat</title>

        <!-- Bootstrap -->
        <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-progressbar -->
        <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>


        <!-- Datatables -->
        <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">



        <!-- Custom Theme Style -->
        <link href="build/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <!-- <div class="navbar nav_title" style="border: 0;">
                             <a href="index.jsp" class="site_title"><i class="fa fa-refresh"></i> <span>Panadura</span></a>
                         </div>-->

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="images/pro.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>Amila Bandara Herath</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-home"></i> Home <span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="#/user_mgt">User Management Home</a></li>
                                            <li><a href="#/new_user_type">User Type</a></li>
                                            <!--<li><a href="index3.html">Dashboard3</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-users"></i>Administrative Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!--  <li><a href="form.html">General Form</a></li>
                                              <li><a href="form_advanced.html">Advanced Components</a></li>
                                              <li><a href="form_validation.html">Form Validation</a></li>
                                              <li><a href="form_wizards.html">Form Wizard</a></li>
                                              <li><a href="form_upload.html">Form Upload</a></li>
                                              <li><a href="form_buttons.html">Form Buttons</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-heart-o"></i>Social Services Division<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="#/aids_and_equipments">Aids and Equipments</a></li>
                                            <li><a href="#/view_all_ID_applicants">Senior Citizenship ID</a></li>
                                            <li><a href="#/dry_rations">Dry Rations</a></li>
                                            <li><a href="#/CBR_project">CBR Project</a></li>                                           
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-edit"></i>Planning Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!-- <li><a href="tables.html">Tables</a></li>
                                             <li><a href="tables_dynamic.html">Table Dynamic</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bar-chart-o"></i>Accounts Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!--  <li><a href="chartjs.html">Chart JS</a></li>
                                              <li><a href="chartjs2.html">Chart JS2</a></li>
                                              <li><a href="morisjs.html">Moris JS</a></li>
                                              <li><a href="echarts.html">ECharts</a></li>
                                              <li><a href="other_charts.html">Other Charts</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-clone"></i>Registrar Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!--  <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                                              <li><a href="fixed_footer.html">Fixed Footer</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-clone"></i>Pension Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!-- <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                                             <li><a href="fixed_footer.html">Fixed Footer</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-clone"></i>Grama Niladhari Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!-- <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                                             <li><a href="fixed_footer.html">Fixed Footer</a></li>-->
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-clone"></i>Establishment Division<span class="label label-success pull-right">Coming Soon</span></a>
                                        <ul class="nav child_menu">
                                            <!-- <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                                             <li><a href="fixed_footer.html">Fixed Footer</a></li>-->
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">



                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->

                <!-- page content -->
                <div class="right_col" id="main-content" role="main">



                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer style="background-color:  #2A3F54">
                    <div class="pull-right">
                        <a href="http://cisinnovation.com/" target="_blank">Powered By CIS</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>


        <!-- validator -->
        <script src="vendors/validator/validator.js"></script>



        <!-- FastClick -->
        <script src="vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="vendors/nprogress/nprogress.js"></script>
        <!-- Chart.js 
        <script src="vendors/Chart.js/dist/Chart.min.js"></script>-->
        <!-- gauge.js -->
        <script src="vendors/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar 
        <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>-->
        <!-- iCheck -->
        <script src="vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons  -->
        <script src="vendors/skycons/skycons.js"></script>-->
        <!-- Flot -->
        <script src="vendors/Flot/jquery.flot.js"></script>
        <script src="vendors/Flot/jquery.flot.pie.js"></script>
        <script src="vendors/Flot/jquery.flot.time.js"></script>
        <script src="vendors/Flot/jquery.flot.stack.js"></script>
        <script src="vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
        <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
        <script src="vendors/flot.curvedlines/curvedLines.js"></script>

        <!-- bootstrap-daterangepicker -->
        <script src="js/moment/moment.min.js"></script>
        <script src="js/datepicker/daterangepicker.js"></script>



        <!-- DateJS -->
        <script src="vendors/DateJS/build/date.js"></script>
        <!-- JQVMap -->
        <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
        <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
        <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="js/moment/moment.min.js"></script>
        <script src="js/datepicker/daterangepicker.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="build/js/custom.min.js"></script>

        <script type="text/javascript" src="js/director/director.min.js"></script>

        <!--mustache-->
        <script type="text/javascript" src="build/js/mustache/mustache.min.js"></script>

        <script type="text/javascript" src="js/router.js"></script>


        <!--local js calls-->
        <script type="text/javascript" src="components/senior_citizenship_ID/senior_citizenship_ID.js"></script>



        <!-- Datatables -->
        <script src="vendors/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="vendors/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
        <script src="vendors/datatables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
        <!-- datatables buttons -->
        <script src="vendors/datatables/extensions/Buttons/js/buttons.bootstrap.min.js"></script>
        <script type="text/javascript" language="javascript" src="vendors/jszip/dist/jszip.min.js"></script>
        <script type="text/javascript" language="javascript" src="vendors/pdfmake/pdfmake.min.js"></script>
        <script type="text/javascript" language="javascript" src="vendors/vfsfonts/vfsfonts.js"></script>
        <script src="vendors/datatables/extensions/Buttons/js/buttons.html5.min.js"></script>
        <script src="vendors/datatables/extensions/Buttons/js/buttons.colVis.min.js"></script>
        <script src="vendors/datatables/extensions/checkbox/dataTables.checkboxes.min.js"></script>




        <!-- Skycons -->
        <script>
            $(document).ready(function () {
                var icons = new Skycons({
                    "color": "#73879C"
                }),
                        list = [
                            "clear-day", "clear-night", "partly-cloudy-day",
                            "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                            "fog"
                        ],
                        i;

                for (i = list.length; i--; )
                    icons.set(list[i], list[i]);

                icons.play();
            });
        </script>
        <!-- /Skycons -->

    </body>
</html>
