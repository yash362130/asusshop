<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="billpage.aspx.cs" Inherits="AsusShop.billpage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Bill page</title>
     <link rel="shortcut icon" href="image/icon1.png" type="image/x-icon"/>
    <link href="css/billpage.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <center>

      <h1 >Asus Shop</h1>
        </center>
         <div class="invoice">
     <div class="invoice-header">
         <h1>Invoice Bill</h1>
     </div>
     <div class="user-info">
         <div>
             <p><strong>User Name:</strong> <asp:Label ID="username" runat="server" Text="Label"></asp:Label></p>
             <p><strong>Email:</strong> <asp:Label ID="email" runat="server" Text="Label"></asp:Label></p>
         </div>
         <div>
             <p><strong>Date:</strong><asp:Label ID="dateandtime" runat="server" Text="Label"></asp:Label> </p>
             <p><strong>PaymentMethod:</strong><asp:Label ID="paymentmethhod" runat="server" Text="Label"></asp:Label>
         </div>
     </div>
     <table class="product-details">
         <thead>
             <tr>
                 <th>Product</th>
                 <th>Price</th>
             </tr>
         </thead>
         <tbody>
             <asp:DataList ID="datalist" runat="server">
                 <ItemTemplate>
                     <tr>
                         <td>
                             <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                         </td>
                         <td>
                             <asp:Label ID="price" runat="server" CssClass="pricebill" Text='<%#Eval("price") %>'></asp:Label>
                         </td>

                     </tr>
                 </ItemTemplate>
             </asp:DataList>
         </tbody>
     </table>
     <div class="total">
         <p>
             <strong>
                 <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label></strong>
         </p>
         <asp:Label ID="ttp" runat="server" Text="total"></asp:Label>


     </div>
     <asp:Button ID="continueshoping" runat="server" Text="ContinueShopping" CssClass="continueshopping" onclick="continueshoping_Click" />
 </div>

    </form>
</body>
</html>
