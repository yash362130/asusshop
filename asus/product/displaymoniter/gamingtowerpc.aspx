<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master"  EnableEventValidation="false" ValidateRequest="false" AutoEventWireup="true" CodeBehind="gamingtowerpc.aspx.cs" Inherits="AsusShop.displaymoniter.gamingtowerpc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link href="../../css/productstyle.css" rel="stylesheet" />
   
   
   <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
    <ItemTemplate>
         <div class="container">
        <div class="details-prouct">
            <asp:Label ID="Label6" runat="server" CssClass="windows" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
            <div class="image">
                <image src="../../../../image/<%#Eval("image") %>" height="150px" width="150px"></image>
            </div>
            <br />

            <div class="name">
                <asp:Label ID="Label1" runat="server" ForeColor="black" Text='<%#Eval("name") %>'></asp:Label><br />

            </div>
            <div class="line"></div>
            <div class="asus-price-name1">
                Asus Store Price
            </div>
            <div class="asus-price">
                RS.<asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label><br />
            </div>
            <div class="asus-price-name2">
                The price may not refer to the specification below
            </div>
            <div class="line"></div>
            <div class="detail">

                <asp:Label ID="Label3" runat="server" Text='<%#Eval("description1") %>'></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("description2 ") %>'></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("description3") %>'></asp:Label><br />

            </div>
             <asp:Button ID="addtocart" runat="server" CssClass="btn1" Text="Addcart" OnClick="addtocart_Click"  />


        </div>
    </div>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
