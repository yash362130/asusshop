<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datafatch.aspx.cs" Inherits="AsusShop.datafatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Asus </title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Arimo:ital@1&family=EB+Garamond&family=Kanit:wght@200&family=Oswald:wght@300&family=Poppins:wght@300&family=Raleway:ital@1&family=Roboto+Condensed:wght@700&family=Roboto+Slab&family=Roboto:wght@300&display=swap');

        .container {
            margin: 10px 20px;
            border: 2px solid black;
            border-radius: 20px 10px;
            overflow: hidden;
            position: relative;
            height: 75vh;
            width: 36vh;
            background-color: #F9F9FB;
            display:flex;
           
            transform:translateX(14vh);
        }


        .image {
            display: block;
            margin-left: 40px;
            margin-right: auto;
            width: 50%;
        }

        .name {
            font-size: 25px;
            font-weight: bold;
            font-family: serif;
            display: flex;
            justify-content: center;
            transform: translateY(-10px);
        }

        .line {
            background: red;
            height: 1px;
        }


        .detail {
            position: relative;
            transform: translateX(30px);
            font-size: 18px;
            
        }

        .btn1 {
             display: block;
            background-color: #0000FF;
            color: white;
            border-radius: 30px;
            height: 32px;
            width: 30vh;
            transform: translateX(2vh);
            font-weight: bold;
           
            position:relative;
            top:1vh;
        }

        .btn2 {
             display: block;
            background-color: #0000FF;
            color: white;
            border-radius: 30px;
            height: 32px;
            width: 30vh;
            transform: translateX(2vh);
            font-weight: bold;
            position:relative;
            top:1vh;
           
        }

        .btn1 {
            margin-top: 9vh;
        }

        .btn2 {
            margin-top: -2vh;
        }

        .btn1:hover {
            background: white;
            color: black;
        }

        .btn2:hover {
            background: white;
            color: black;
        }

        .asus-price-name1 {
            font-family: 'Roboto Condensed', sans-serif;
            font-family: 'Roboto Slab', serif;
            font-size: 20px;
            transform: translateX(10px);
        }

        .asus-price-name2 {
            font-family: 'Roboto Condensed', sans-serif;
            font-family: 'Roboto Slab', serif;
            font-size: 15px;
            transform: translateX(10px);
        }

        .asus-price {
            color: red;
            transform: translateX(10px);
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
            <ItemTemplate>
                <div class="container">
                    <div class="details-prouct">
                      
                        <%-- image --%>
                        <div class="image">
                            <image src="image/<%#Eval("image") %>" height="150px" width="150px"></image>
                        </div>
                        <br />
                        <%-- name --%>
                        <div class="name">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                        </div>
                        <div class="line"></div>
                        <div class="asus-price-name1">
                            Asus Store Price
                        </div>
                        <div class="asus-price">
                            Rs.<asp:Label ID="Label3" runat="server" ForeColor="red" Text='<%#Eval("price") %>'></asp:Label><br />
                        </div>
                        <div class="asus-price-name2">
                            The price may not refer to the specification below
                        </div>
                        <div class="line"></div>
                        <div class="detail">
                            . 
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("windows") %>'></asp:Label><br />
                            .
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("storage") %>'></asp:Label><br />
                            .
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("processer") %>'></asp:Label><br />
                            . 
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("inchsize") %>'></asp:Label><br />
                            .  
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("battery") %>'></asp:Label><br />
                        </div>

                        <asp:Button ID="Button1" runat="server" CssClass="btn1" Text="Buy Now" /><br />
                        <asp:Button ID="Button2" runat="server" CssClass="btn2" Text="Addcart" />


                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
