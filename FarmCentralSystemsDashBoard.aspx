<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsDashBoard.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsDashBoard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome To Farm Central Systems!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        .topnav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }

        .topnav a:active {
            background-color: #3e8e41;
            color: white;
        }

        .content {
            padding: 16px;
        }

        .content asp:label {
            display: block;
            font-size: 24px;
            color: #333;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="/FarmCentralSystemsRegisterUser.aspx">Users</a>
        <a href="/FarmCentralSystemsPurchases.aspx">Purchases</a>
        <a href="/FarmCentralSystemsProducts.aspx">Products</a>
    </div>
    <div class="content">
        <asp:Label ID="WelcomeLabel" runat="server" Text="Welcome!"></asp:Label>
    </div>
</body>
</html>
