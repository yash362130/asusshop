<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AsusShop.login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login From</title>
    <link href="login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="wrapper">
            <div class="title">
                Login Form
            </div>
            <br />
            <div class="field">
                <asp:TextBox ID="email" runat="server" CssClass="in" Width="328px" ></asp:TextBox>
                <label>Email Address</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </div>
            <div class="field">
                 <asp:TextBox ID="password" runat="server" CssClass="in" Width="327px" TextMode="Password"></asp:TextBox>
                <label>Password</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
          
            <div class="field">
                <asp:Button ID="login1" runat="server" CssClass="submit" Text="Login" OnClick="login1_Click" />
            </div>
            <div class="signup-link">
                Not a member? <a href="../Register/Register.aspx" runat="server">Signup now</a><br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
   
            </div>

        </div>
    </form>
</body>
</html>
