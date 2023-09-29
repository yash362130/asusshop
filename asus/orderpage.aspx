<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderpage.aspx.cs" Inherits="AsusShop.orderpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Order Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="shortcut icon" href="image/icon1.png" type="image/x-icon"/>
    <link href="order1.css" rel="stylesheet" />
    <style>
        .form-control,
        .text {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>ORDER PAGE</h1></center>
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="text" placeholder="Enter your name" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="text" placeholder="Enter your email" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" class="text" placeholder="Enter your phone number" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                <asp:TextBox ID="address" required="required" runat="server" cols="20" Rows="2" class="text" placeholder="Enter your address"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Order Items:"></asp:Label>
                <asp:TextBox ID="txtOrderItems" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>

                <asp:Label ID="Label6" runat="server" Text="Total Price:"></asp:Label>
                <asp:TextBox ID="txtTotalPrice" Style="margin-left: 10px" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Payment Methods:"></asp:Label><br />
                <asp:RadioButtonList ID="rbPaymentMethod" required="required" runat="server" CssClass="radio-list">
                    <asp:ListItem Text='<i class="fas fa-credit-card icon"></i> Credit Card' Value="creditcard" />
                    <asp:ListItem Text='<i class="fas fa-money-bill icon"></i> Cash on Delivery' Value="cashondelivery" />
                    <asp:ListItem Text='<i class="fas fa-mobile-alt icon"></i> UPI' Value="UPI" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbPaymentMethod" ErrorMessage="please Select Payment Method" ForeColor="Red">please Select Payment Method</asp:RequiredFieldValidator>
            </div>


            <asp:Button ID="conformorder" runat="server" Text="Conform order" CssClass="btn" OnClick="conformorder_Click" />
            &nbsp &nbsp
            <asp:Button ID="cencelorder" runat="server" Text="cencelorder" CssClass="btn" OnClick="cencelorder_Click" />
        </div>


    </form>
</body>

<script>
    $(document).ready(function () {
        $(".radio-list input[type='radio']").change(function () {
            $(".radio-list label .icon").css("color", "red");
            $(".radio-list label .text").css("color", "red");
            $(".radio-list label .text").css("font-weight", "normal");
            if ($(this).is(":checked")) {
                var label = $(this).next("label");
                label.find(".icon").css("color", "blue");
                label.find(".text").css("color", "#007bff");
                label.find(".text").css("font-weight", "bold");
            }
        });
    });
</script>
</html>
