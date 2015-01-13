<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Lecture.aspx.vb" Inherits="_Default" %>

<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Lecture</title>
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
                        <h2>Search Lectures</h2>                       
                        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#unit1">Unit 1</button>
                        <div id="unit1" class="collapse in">
                                <% currentUnit = lectures.Rows(0).Item(1) %>
                            <p>
                                <% For Each lecture As DataRow In lectures.Rows%>
                                    <% If currentUnit <> lecture.Item(1) Then %>
                                        <% currentUnit = lecture.Item(1)%>
                            </p>
                        </div>

                        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#unit<%=currentUnit%>">Unit <%=currentUnit%></button>
                        <div id="unit<%=currentUnit%>" class="collapse in">
                            <p>
                                    <% End If %>

                                        Lecture <%=lecture.Item(1) %>
                                <% Next%>
                            </p>
                        </div>
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
