<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AsusShop.Register.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register From</title>
    <link href="register.css" rel="stylesheet" />
    <style>
        .password-container {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            bottom: 5vh;
            cursor: pointer;
            transform: translateX(40vh);
        }
    </style>
    <script type="text/javascript">
        function filterNumbers(event) {
            var charCode = event.which ? event.which : event.keyCode;
            var charStr = String.fromCharCode(charCode);

            var allowedChars = /^[a-zA-Z.,!? ]*$/;

            if (!allowedChars.test(charStr)) {
                event.preventDefault();
                return false;
            }
        }

        function validateNumberInput() {
            var textBox = document.getElementById('<%= phoneno.ClientID %>');
            textBox.value = textBox.value.replace(/[^0-9]/g, '');
        }
        function togglePasswordVisibility() {
            var passwordInput = document.getElementById('password');
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
            } else {
                passwordInput.type = "password";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="title">
                Register Form
            </div>
               <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <div class="field">
                <asp:TextBox ID="name" runat="server" CssClass="in" Width="326px" required="required" onkeypress="return filterNumbers(event)" TabIndex="1"></asp:TextBox>
                <label>Name</label>
            </div>
            <div class="field">
                <asp:TextBox ID="phoneno" oninput="validateNumberInput()" runat="server" CssClass="in" TextMode="Phone" Minlength="10" required="required" Width="327px" MaxLength="10" TabIndex="2"></asp:TextBox>
            <label>Phone No</label>
            </div>
            <div class="field" style="left: 6px; top: -1px">

                <asp:TextBox ID="Emailaddress" runat="server" CssClass="in" Width="327px" required="required" TabIndex="3"></asp:TextBox>
                <label class="auto-style2">EmailAddress</label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="" ValidationExpression="^\S+@\S+$" ControlToValidate="Emailaddress" ForeColor="Red" ErrorMessage="Enter a valid Email-address"></asp:RegularExpressionValidator>
            </div>
            <div class="field" style="left: 2px; top: 2px">
                <asp:TextBox ID="password" runat="server" CssClass="in" required="required" TextMode="Password" Width="328px" MaxLength="15" Minlength="3" TabIndex="4"></asp:TextBox>
                <label class="auto-style1">Password</label><br />
                <div class="password-container">
                    <i class="toggle-password" onclick="togglePasswordVisibility();">&#128065;</i>
                </div>
                <asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="phoneno" ErrorMessage="Invalid mobile number format." ValidationExpression="^\d{10}$" Display="Dynamic" ForeColor="Red" />
            </div>
            <br />

            <div class="field">
                <asp:Button ID="register1" runat="server" CssClass="submit" Text="Register" OnClick="register1_Click" />
            </div>
            <div class="signup-link">
                Not a member? <a href="../login/login.aspx" runat="server">Login in</a><br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

            </div>

        </div>
    </form>
</body>
</html>