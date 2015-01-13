<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Profile</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/simple-sidebar.css" />
</head>
<body>
       <form id="form1" runat="server">
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
                <div class="row" >
                    <div class="col-md-4" style="margin-top:50px">
                       <img src="images/avatar.jpg" class="img-responsive" alt="avatar" style="width:60%;height:60%" />
                    </div>
                    <div class="col-md-8" style="margin-top:30px">
                        <h3>Name:</h3>
                        <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
                        <h4>Points collected:</h4>
                        <asp:Label ID="Points" runat="server" Text="Points"></asp:Label>
                    </div>                 
                </div>
                <div class="row text-center">
                    <div class="col-md-6">
                        <h6>Test Results Graph</h6>
                    </div>
                    <div class="col-md-6">
                        <h6>Asked Questions</h6>
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

       </form>

   </body>
</html>
