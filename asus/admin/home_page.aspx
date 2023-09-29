<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminsite.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="admin.admin.accessories.WebForm1" %>

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

            .panel input[type="file"] {
                margin-bottom: 10px;
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

                <asp:FileUpload ID="FileUpload1" runat="server" />

                <asp:TextBox ID="name" runat="server" placeholder="Enter Product name" MaxLength="20"></asp:TextBox>

                <asp:TextBox ID="price" runat="server" placeholder="Enter Product price" MaxLength="20"></asp:TextBox>

                <asp:TextBox ID="description1" runat="server" placeholder="Description 1" MaxLength="22"></asp:TextBox>

                <asp:TextBox ID="description2" runat="server" placeholder="Description 2" MaxLength="26"></asp:TextBox>

                <asp:TextBox ID="description3" runat="server" placeholder="Description 3" MaxLength="22"></asp:TextBox>

                <asp:DropDownList ID="MainDropDown" runat="server" AutoPostBack="false" onchange="toggleSubDropdown()">
                    <asp:ListItem Text="ForHome" Value="ForHome" />
                    <asp:ListItem Text="ForStudent" Value="ForStudent" />
                    <asp:ListItem Text="ForWork" Value="ForWork" />
                    <asp:ListItem Text="ForGaming" Value="ForGaming" />
                    <asp:ListItem Text="ForCreators" Value="ForCreators" />
                    <asp:ListItem Text="AllInOnePc" Value="AllInOnePc" />
                    <asp:ListItem Text="GamongTowerPc" Value="GamongTowerPc" />
                    <asp:ListItem Text="MiniPc" Value="MiniPc" />
                    <asp:ListItem Text="Moniter" Value="Moniter" />
                    <asp:ListItem Text="Cooling" Value="Cooling" />
                    <asp:ListItem Text="GamingCase" Value="GamingCase" />
                    <asp:ListItem Text="MotherBoard" Value="MotherBoard" />
                    <asp:ListItem Text="AdaptersChargers" Value="AdaptersChargers" />
                    <asp:ListItem Text="Bags" Value="Bags" />
                    <asp:ListItem Text="Keybords" Value="Keybords" />
                    <asp:ListItem Text="Mouse" Value="Mouse" />
                    <asp:ListItem Text="HeadsetAudio" Value="HeadsetAudio" />
                    <asp:ListItem Text="RogPhone" Value="RogPhone" />
                    <asp:ListItem Text="WholeWifi" Value="WholeWifi" />
                    <asp:ListItem Text="wifi6" Value="wifi6" />
                    <asp:ListItem Text="wifirouters" Value="wifirouters" />
                    <asp:ListItem Text="adapters" Value="adapters" />
                </asp:DropDownList>
                <br />
                <br>

                <br />
                <br />
                <asp:Button ID="submit" runat="server" class="btn" Text="sumbit" OnClick="submit_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>




</asp:Content>
