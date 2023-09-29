<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminsite.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="AsusShop.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <style>
    .panel {
        width: 300px;
        padding: 20px;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin: 10px;
        position: relative;
        border-radius: 10px 50px;
    }
                .panel label {
            display: block;
            margin-bottom: 10px;
        }

        .panel input[type="text"],
        .panel textarea {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

       

        .panel .btn {
            margin: 10px;
            display: block;
            width: 70%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }

    .laptop {
        align: center;
    }
</style>

    <div class="laptop">
       <div class="table" align="center">
           <div class="panel" align="center">
               <h3>Insert Product</h3>
               <asp:Label ID="Label1" runat="server" Text="upload image"></asp:Label>

               <asp:FileUpload ID="FileUpload1" runat="server" /><br />

               <asp:TextBox ID="name" runat="server" placeholder="Enter Product name" MaxLength="20"></asp:TextBox>

               <br />
               <br />
               <asp:Button ID="submit" runat="server" class="btn" Text="sumbit" onclick="submit_Click" />
               <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
               </div>
       </div>
   </div>
   
</asp:Content>
