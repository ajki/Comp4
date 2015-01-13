<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Log In</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/simple-sidebar.css" />  
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body style="text-align:center"  >
<form id="form1" runat="server">
    <div class="container-fluid" style="padding:20px;margin-left:30px;margin-right:30px" >
            <div class="row">
                <div class="col-md-6 ">
                    <img src="images/cic.jpg" class="img-responsive" alt="Logo" style="width:30%;height:30%"/>
                </div>
                <div class="col-md-6 text-right">
                    <h1 class="text-uppercase">Cic Computing</h1>
                        
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="align-items:center">
                      Username:<br />
                       <asp:TextBox ID="Username" runat="server"></asp:TextBox> <br />
                      Password:<br />
                       <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox> <br />
                       <asp:Label ID="Label1" runat="server"></asp:Label> <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Sign in" />
                        &nbsp;&nbsp;<a href="SignUp.aspx"><span class="auto-style1">Sign Up</span></a><br />
                </div>
            </div>

        </div>
    
    
    </form>
      
</body>
</html>
