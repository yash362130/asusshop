<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showbill.aspx.cs" Inherits="AsusShop.user.showorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <h1>Your ProductBill</h1>
        <asp:GridView ID="GridView1" runat="server">
                    <EmptyDataTemplate> If the purchase has not been made, then the bill has not been created</EmptyDataTemplate>  
        </asp:GridView>
        </center>
        


    </form>
</body>
</html>
