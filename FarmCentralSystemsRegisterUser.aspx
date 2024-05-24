<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsRegisterUser.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsRegisterUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        asp:TextBox {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        asp:Button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        asp:Button:hover {
            background-color: #45a049;
        }

        asp:DropDownList {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="RegisterUserForm" runat="server">
        <div class="container">
            <label for="uname"><b>Username</b></label>
            <asp:TextBox ID="RegisterUsernameText" runat="server" required></asp:TextBox>

            <label for="psw"><b>Password</b></label>
            <asp:TextBox type="password" ID="RegisterPasswordText" runat="server" required></asp:TextBox>

            <label for="psw"><b>Confirm Password</b></label>
            <asp:TextBox type="password" ID="RegisterConfirmPasswordText" runat="server" required></asp:TextBox>

            <label>Select User Role</label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Farmer">Farmer (Supplier)</asp:ListItem>
                <asp:ListItem>Employee</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
        </div>
    </form>
</body>
</html>
