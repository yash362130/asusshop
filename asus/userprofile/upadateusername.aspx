<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upadateusername.aspx.cs" Inherits="AsusShop.user.upadateusername" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/updateusername.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>EDIT USER NAME</h2>
            <div class="form-group">
                <label for="oldName">Old User Name:</label>
                <asp:TextBox ID="oldusername" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="NewName">New User Name:</label>
                <asp:TextBox ID="newusername" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <asp:Button ID="update" runat="server" CssClass="update" onclick="update_Click" Text="Update" />
          <a href="userdetail.aspx">Back</a><br />
            <asp:Label ID="message" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    </div>
    </form>
   
</body>
</html>
