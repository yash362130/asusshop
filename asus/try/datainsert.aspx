<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datainsert.aspx.cs" Inherits="AsusShop.datainsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Asus </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 179px;
        }
        .auto-style3 {
            width: 179px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 179px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="price"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="windos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="22"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="storage"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="22"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="processer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="26"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="eahmonoter"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" MaxLength="19"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="ba"></asp:Label>
                    tter</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" MaxLength="26"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                    <asp:Button ID="check" runat="server" OnClick="check_Click" Text="check" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
