<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsLogin.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Farm Central Systems</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        asp:TextBox {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
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
    </style>
</head>
<body>
    <form id="LoginForm" runat="server">
        <div class="container">
            <label for="uname"><b>Username</b></label>
            <asp:TextBox ID="UsernameText" runat="server" placeholder="Enter Username" required></asp:TextBox>

            <label for="psw"><b>Password</b></label>
            <asp:TextBox type="password" ID="PasswordText" runat="server" placeholder="Enter Password" required></asp:TextBox>

            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" Width="92px" />
        </div>
    </form>
</body>
</html>
