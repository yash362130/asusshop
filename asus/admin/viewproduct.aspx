﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminsite.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="AsusShop.viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1>All View Product</h1>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
                <asp:BoundField DataField="description1" HeaderText="description1" SortExpression="description1"></asp:BoundField>
                <asp:BoundField DataField="description2" HeaderText="description2" SortExpression="description2"></asp:BoundField>
                <asp:BoundField DataField="description3" HeaderText="description3" SortExpression="description3"></asp:BoundField>
                <asp:BoundField DataField="typeofproduct" HeaderText="typeofproduct" SortExpression="typeofproduct"></asp:BoundField>
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asusConnectionString20 %>" DeleteCommand="DELETE FROM [product] WHERE [id] = @id" InsertCommand="INSERT INTO [product] ([image], [name], [price], [description1], [description2], [description3], [typeofproduct]) VALUES (@image, @name, @price, @description1, @description2, @description3, @typeofproduct)" ProviderName="<%$ ConnectionStrings:asusConnectionString20.ProviderName %>" SelectCommand="SELECT * FROM [product] ORDER BY [id] DESC" UpdateCommand="UPDATE [product] SET [image] = @image, [name] = @name, [price] = @price, [description1] = @description1, [description2] = @description2, [description3] = @description3, [typeofproduct] = @typeofproduct WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="description1" Type="String"></asp:Parameter>
                <asp:Parameter Name="description2" Type="String"></asp:Parameter>
                <asp:Parameter Name="description3" Type="String"></asp:Parameter>
                <asp:Parameter Name="typeofproduct" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="price" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="description1" Type="String"></asp:Parameter>
                <asp:Parameter Name="description2" Type="String"></asp:Parameter>
                <asp:Parameter Name="description3" Type="String"></asp:Parameter>
                <asp:Parameter Name="typeofproduct" Type="String"></asp:Parameter>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>