<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminsite.Master" AutoEventWireup="true" CodeBehind="viewcontectus.aspx.cs" Inherits="AsusShop.admin.viewcontectus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1>View contect us </h1>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asusConnectionString22 %>" ProviderName="<%$ ConnectionStrings:asusConnectionString22.ProviderName %>" SelectCommand="SELECT * FROM [contectus] ORDER BY [id] DESC"></asp:SqlDataSource>
    </center>
</asp:Content>
