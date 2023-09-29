<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsidelogin.aspx.cs" Inherits="AsusShop.admin.adminsidelogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../login/login.css" rel="stylesheet" />
    <style>
        .wrapper {
            position: relative;
            bottom: 50px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        html, body {
            display: grid;
            height: 100%;
            width: 100%;
            place-items: center;
            background: #f2f2f2;
        }

        ::selection {
            background: #4158d0;
            color: #fff;
        }

        .wrapper {
            width: 380px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 20px 20px rgba(0,0,0,0.1);
        }

            .wrapper .title {
                font-size: 35px;
                font-weight: 600;
                text-align: center;
                line-height: 100px;
                color: #fff;
                user-select: none;
                border-radius: 15px 20px 15px 15px;
                background: linear-gradient(-135deg, #c850c0, #4158d0);
            }

        .wrapper {
            padding: 10px 30px 50px 30px;
        }

            .wrapper .field {
                height: 50px;
                width: 100%;
                margin-top: 20px;
                position: relative;
            }

                .wrapper .field .in {
                    height: 100%;
                    width: 100%;
                    outline: none;
                    font-size: 17px;
                    padding-left: 20px;
                    border: 1px solid lightgrey;
                    border-radius: 25px;
                    transition: all 0.3s ease;
                }

                    .wrapper .field .in:focus,
                    .field .in:valid {
                        border-color: #4158d0;
                    }

                .wrapper .field label {
                    position: absolute;
                    top: 50%;
                    left: 20px;
                    color: #999999;
                    font-weight: 400;
                    font-size: 17px;
                    pointer-events: none;
                    transform: translateY(-50%);
                    transition: all 0.3s ease;
                }

        .field .in:focus ~ label,
        .field .in:valid ~ label {
            top: 0%;
            font-size: 16px;
            color: #4158d0;
            background: #fff;
            transform: translateY(-50%);
        }

        .content {
            display: flex;
            width: 100%;
            height: 50px;
            font-size: 16px;
            align-items: center;
            justify-content: space-around;
        }


            .content input {
                width: 15px;
                height: 15px;
                background: red;
            }

            .content label {
                color: #262626;
                user-select: none;
                padding-left: 5px;
            }


        .field .submit {
            width: 40vh;
            height: 5vh;
            color: #fff;
            border: none;
            padding-left: 0;
            margin-top: -10px;
            font-size: 20px;
            font-weight: 500;
            cursor: pointer;
            margin-top: 10px;
            margin-left: 10px;
            background: linear-gradient(-135deg, #c850c0, #4158d0);
            transition: all 0.3s ease;
            border-radius: 20px 20px;
        }

            .field .submit:active {
                transform: scale(0.95);
            }

        .signup-link {
            color: #262626;
            margin-top: 20px;
            text-align: center;
        }


            .signup-link a {
                color: #4158d0;
                text-decoration: none;
            }


                .signup-link a:hover {
                    text-decoration: underline;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="title">
             Admin Login
            </div>
            <br />
            <div class="field">
                <asp:TextBox ID="adminusername" runat="server" CssClass="in" required="requeird" Width="328px"></asp:TextBox>
                <label>Admin UserName</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adminusername" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
            <div class="field">
                <asp:TextBox ID="adminpassword" runat="server" CssClass="in" Width="327px" TextMode="Password" required="requried"></asp:TextBox>
                <label>Admin Password</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminpassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="field">
                <asp:Button ID="login" runat="server" CssClass="submit" Text="Login" OnClick="login_Click" />
            </div>
            <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="red" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
