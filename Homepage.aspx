<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Homepage.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Homepage</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/simple-sidebar.css" />
</head>

<body>
    <form id="form1" runat="server">
    <div class="container">
        
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
       
         <div class="row text-center center-block">
            <div class="col-md-1"></div>
            <div class="col-md-5">
               <a href="Lecture.aspx">
                <img src="images/books.jpg" class="img-responsive" alt="Lecture" style="width:100%;height:100%" />Lecture 
                </a>
            </div>
            <div class="col-md-5">
                 <a href="Forum.aspx">
                <img src="images/questions.jpg" class="img-responsive" alt="Questions" style="width:100%;height:100%" />Forum
                 </a> 
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row text-center center-block">
            <div class="col-md-1"></div>
            <div class="col-md-5">
               <a href="Profile.aspx">Profile 
                <img src="images/avatar.jpg" class="img-responsive" alt="Profile" style="width:100%;height:100%" />
               </a>
            </div>
            <div class="col-md-5">
                 <a href="Test.aspx">Test
                <img src="images/test.jpg" class="img-responsive" alt="Test" style="width:100%;height:100%" />
                 </a> 
            </div>
            <div class="col-md-1"></div>
        </div>

    </div>
    </form>
</body>
</html>
