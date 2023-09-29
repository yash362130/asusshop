<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="AsusShop.gallery1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/gallery.css" rel="stylesheet" />
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
      <ItemTemplate>
          <div class="container">
              <center>
                  <image src="../../../../image/<%#Eval("image") %>" height="160px" width="210px" ></image>
              </center>
              <center>
                  <div class="name">
                  <asp:Label ID="Label1" runat="server" ForeColor="black" Text='<%#Eval("name") %>'></asp:Label><br />

              </div>
                  </center>
         </div>
      </ItemTemplate>
  </asp:DataList>

</asp:Content>
