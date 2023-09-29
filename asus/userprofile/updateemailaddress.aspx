<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateemailaddress.aspx.cs" Inherits="AsusShop.user.updateemailaddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/updtaeemail.css" rel="stylesheet" />
    <style>
      /*  body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .update {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

            .update:hover {
                background-color: #0056b3;
            }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <h2>EDIT USER NAME</h2>
            <div class="form-group">
                <label for="oldemail">Old Email:</label>
                <asp:TextBox ID="oldemail" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="newemail">New Email:</label>
                <asp:TextBox ID="newemail" runat="server" CssClass="textbox"></asp:TextBox>
            </div>

            <asp:Button ID="updateemail" runat="server" CssClass="update" OnClick="updateemail_Click" Text="Update" />
             <asp:Label ID="message" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            <a href="userdetail.aspx" runat="server">Back</a>
 
        </div>

    </form>
</body>
</html>
