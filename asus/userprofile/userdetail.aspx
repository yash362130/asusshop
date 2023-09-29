<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdetail.aspx.cs" Inherits="datareader.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/userprofle.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <h1 data-text="User Profile">User Profile</h1>
        <div class="container">
            <div class="profile">
                <div class="profile-image">
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <image src="/../image/<%#Eval("image")%>" alt="no"></image>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="file-upload" Visible="False" />
                </div>
                <div class="contact-info">
                    <p>
                        Email:
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="editable-field" ReadOnly="true"></asp:TextBox>
                    </p>
                    <p>
                        Phone:
                        <asp:TextBox ID="txtphone" runat="server" CssClass="editable-field" ReadOnly="true"></asp:TextBox>
                    </p>
                    <p>
                        Name:
                        <asp:TextBox ID="txtName" runat="server" CssClass="editable-field" ReadOnly="true"></asp:TextBox>
                    </p>
                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Editname" CssClass="edit-button" />
                    <asp:Button ID="emialedit" runat="server" Text="EditEmail" OnClick="emialedit_Click" CssClass="edit-button" />
                    <asp:Button ID="showbill" runat="server" OnClick="showbill_Click" Text="bill" CssClass="save-button" />
                </div>
            </div>
            <div class="order-history">
                ORDER HISTORY
               <asp:GridView ID="GridView1" runat="server">

                   <EmptyDataTemplate>
                       <p>No Order Are Available</p>
                   </EmptyDataTemplate>
               </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
