<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="contect.aspx.cs" Inherits="AsusShop.contact_us.contectmaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="contact.css" rel="stylesheet" />

     <div class="contact-container">
     <div class="contact-info">
         <h2>Contact Information</h2><br />
         <ul>
             <li>Email : mahetayash8@gmail.com</li>
             <li>Phone : +91 9484427299</li>
             <li>Email : harshbhatt932@gmail.com  </li>
             <li>Phone : +91 9033224077</li>
             <li>Location : Chaparda,Junagadh</li> 
            
         </ul>
     </div>
     <div class="contact-form">
         <h2>Contact Us</h2>
             <asp:Label ID="Label1" runat="server"  Text="Name"></asp:Label>
         <asp:TextBox ID="name" required="required" runat="server"></asp:TextBox>
             <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
         <asp:TextBox ID="email" required="required" runat="server"></asp:TextBox>
             <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
         <asp:TextBox ID="message" required="required" cols="20" Rows="4" runat="server"></asp:TextBox>
            <asp:Button ID="send" runat="server" class="btn" Text="Send Message" onclick="send_Click" />
         <asp:Label ID="cs" runat="server" Text="Name" ForeColor="Red"></asp:Label>
          
     </div>
 </div>
</asp:Content>
