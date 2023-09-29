<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" ValidateRequest="false" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="AsusShop.addtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body, h1, h2, p, img {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .product-table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
            margin-bottom: 20px;
        }

        .product-row {
            border: 1px solid #ddd;
        }

        .product-cell {
            padding: 10px;
            text-align: left;
            vertical-align: middle;
        }

        .pimage {
            max-width: 100px;
            max-height: 100px;
            display: block;
            margin: 0 auto;
        }

        .price {
            font-weight: bold;
            color: green;
        }

        .name {
            font-weight: bold;
        }

        .btn1 {
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn2 {
            position: relative;
            transform: translateX(700px);
            padding: 8px 16px;
            height: 40px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn1:hover {
            background-color: red;
            transform: scale(1.05);
        }

        .btn2:hover {
            background-color: red;
        }

        .windows {
            display: none;
        }

        @media (max-width: 768px) {
            .product-cell {
                padding: 5px;
            }

            .pimage {
                max-width: 80px;
                max-height: 80px;
            }

            .price, .name {
                font-size: 14px;
            }

            .btn1 {
                font-size: 12px;
                padding: 6px 12px;
            }
        }

        .product-cell-button {
            position: relative;
            transform: translateY(4vh);
            display: flex;
        }

        .total {
            width: 100%;
            height: 6vh;
            background-color: antiquewhite;
        }

            .total .span {
                color: red;
                position: absolute;
                left: 9px;
                font-size: 35px;
            }

            .total .totalp {
                color: black;
                position: absolute;
                left: 18vh;
                font-size: 35px;
            }
            .cartisempty{
                position:relative;
                margin-top:74px;
                height:50vh;
            }
          
    </style>
    <center>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table border="1" class="product-table">
                    <tr class="product-row">
                        <td class="product-cell">
                            <image id="image11" class="pimage" src='image/<%#Eval("image") %>' />
                        </td>
                        <td class="product-cell">
                            <asp:Label ID="Label3" runat="server" CssClass="price" Text='<%#Eval("price") %>'></asp:Label>

                        </td>
                        <td class="product-cell">
                            <asp:Label ID="Label1" runat="server" CssClass="name" Text='<%#Eval("name") %>'></asp:Label>

                        </td>
                        <td class="product-cell-button">
                            <asp:Button ID="delectiteam" runat="server" CssClass="btn1" OnClick="delectiteam_Click" Text="remove" /><br />

                        </td>
                    </tr>
                    <br />
                    <br />

                    <asp:Label ID="Label2" runat="server" Visible="false" CssClass="windows" Text='<%#Eval("id") %>'></asp:Label>
                </table>

            </ItemTemplate>
        </asp:DataList>
        <asp:Image ID="Image1" runat="server" CssClass="cartisempty" Visible="false" ImageUrl="~/image/yourcartisempty.jpg" />
        <div class="total">
            <span class="span">Total:Rs</span><asp:Label ID="Label4" runat="server" Text="0"  CssClass="totalp"></asp:Label>
            <asp:Button ID="checkout" runat="server" CssClass="btn2" Text="CheckOut" OnClick="checkout_Click" />
           
        </div>
    </center>


</asp:Content>
