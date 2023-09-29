  <%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AsusShop.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <link href="css/productslider.css" rel="stylesheet" />
    <link href="css/product.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <br />
    <style>

    </style>
    <%--slider start--%>
    <div class="slider-container">
        <div class="slider-content">
            <img src="index3.jpg" />
            <img src="index2.jpg" />
            <img src="index1.jpg" />
        </div>
    </div>
    <%--slider over--%>
    <%--advertisment start--%>
    <div class="container1">
        <img src="image/aaa.jpg" class="a">
        <img src="image/aaaaa.jpg" class="b">
    </div>
    <%--advertisment over--%>

    <%--offerproduct start--%>
    <div class="header">
        <h1>Welcome to our Asus Store</h1>
    </div>
    <div class="offers">
        <h2>Special Offers</h2>
        <p>Check out our latest offers below:</p>
    </div>
    <div class="products">
        <div class="product">
            <asp:ImageButton CssClass="img" ID="ImageButton1" alt="Product 1" OnClick="ImageButton1_Click" runat="server" ImageUrl="~/image/17fold.png" />
            <h3>For Home</h3>
            <p>500 TB SSD</p>
            <p>1 TB HHD</p>
            <p>Price: ₹52000 </p>
        </div>

        <div class="product">
            <asp:ImageButton CssClass="img" ID="ImageButton2" alt="Product 1" OnClick="ImageButton2_Click" ImageUrl="~/image/chrombookflipcx3.png"  runat="server" />
            <h3>For Home</h3>
            <p>500 TB SSD</p>
            <p>1 TB HHD</p>
            <p>Price: ₹52000 </p>
        </div>

        <div class="product">
           <asp:ImageButton CssClass="img" ID="ImageButton3" alt="Product 1" OnClick="ImageButton3_Click"  runat="server" ImageUrl="~/image/chromebookdatachablcm3.png" />
             <h3>For Home</h3>
            <p>500 TB SSD</p>
            <p>1 TB HHD</p>
            <p>Price: ₹52000 </p>

        </div>
    </div>
   <%--offer over--%>
   

</asp:Content>



