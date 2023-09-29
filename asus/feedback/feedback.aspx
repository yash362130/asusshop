<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="AsusShop.feedback.feddbackmaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="feedback.css" rel="stylesheet" />
     <div class="container">
     <h1>Feedback Page</h1>
     <div class="form-group">
         <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
         <asp:TextBox ID="name" requried="requried" class="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="please Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
     <div class="form-group">
         <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
         <asp:TextBox ID="emailid" requried="requried" runat="server" class="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailid" ErrorMessage="please Enter your emailid" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailid" ErrorMessage="please enter a valid emailaddress" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     </div>
     <div class="form-group">
         <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
         <asp:TextBox ID="message" requried="requried" class="form-control" runat="server" TextMode="MultiLine" rows="2"></asp:TextBox>
         <%--<textarea id="TextArea1" class="form-control" cols="20" rows="2"></textarea>--%>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="message" ErrorMessage="please Enter your Message" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
         <asp:Button ID="submit" runat="server" CssClass="btn" Text="Submit" onclick="submit_Click" />
         <asp:Label ID="ms" runat="server" Text="Label"></asp:Label>
 </div>
</asp:Content>
