<%@ Page Language="VB" AutoEventWireup="false" CodeFile="formview.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource1" AllowPaging="True">
            <EditItemTemplate>
                Username:
                <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Username:
                <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Username:
                <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/login.mdb" DeleteCommand="DELETE FROM `logininfo` WHERE `Username` = ?" InsertCommand="INSERT INTO `logininfo` (`Username`, `Password`) VALUES (?, ?)" SelectCommand="SELECT `Username`, `Password` FROM `logininfo`" UpdateCommand="UPDATE `logininfo` SET `Password` = ? WHERE `Username` = ?">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        Please do not try to delete any users.</form>
</body>
</html>
