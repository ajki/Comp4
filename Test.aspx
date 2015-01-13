<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Test</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/simple-sidebar.css" />
</head>
<body>
       <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="Profile.aspx"> Profile </a>
                </li>
                <li> <a href="Homepage.aspx">Homepage</a> </li>
                <li> <a href="Lecture.aspx">Lectures</a> </li>                
                <li> <a href="Forum.aspx">Forum</a> </li>                
                <li> <a href="Test.aspx">Test</a> </li>                                          
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 ">
                        <img src="images/cic.jpg" class="img-responsive" alt="Logo" style="width:30%;height:30%"/>
                    </div>
                    <div class="col-md-6 text-right">
                        <h1 class="text-uppercase">Cic Computing</h1>
                        <p> 
                            <a href="Profile.aspx">Profile</a>
                            <a href="SignIn.aspx">Log out</a> 
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Take A Test</h1>
                        <h3>Select A Unit</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p>                           >
                           <a href="TestUnit1.aspx">Unit 1</a>
                        </p>
                    </div>
                <div class="col-md-12">
                        <p>                           >
                           <a href="TestUnit2.aspx">Unit 2</a>
                        </p>
                    </div>
                </div>
               
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

   </body>
</html>
