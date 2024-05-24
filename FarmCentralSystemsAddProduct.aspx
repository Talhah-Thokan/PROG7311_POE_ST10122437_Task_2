<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsAddProduct.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsAddProduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
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
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        asp:DropDownList,
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
    </style>
</head>
<body>
    <form id="AddProductForm" runat="server">
        <div class="container">
            <label for="ProductCategory">Select Product Category</label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Bevarage</asp:ListItem>
                <asp:ListItem>Pharmacy</asp:ListItem>
                <asp:ListItem>Produce</asp:ListItem>
                <asp:ListItem>Deli</asp:ListItem>
                <asp:ListItem>Prepared</asp:ListItem>
                <asp:ListItem>Meat</asp:ListItem>
                <asp:ListItem>Seafood</asp:ListItem>
            </asp:DropDownList>

            <label for="ProductID">Product ID</label>
            <asp:TextBox ID="ProductIDText" runat="server"></asp:TextBox>

            <label for="ProductDescription">Product Description</label>
            <asp:TextBox ID="ProductDescriptionText" runat="server"></asp:TextBox>

            <label for="AvgPrice">Average Price</label>
            <asp:TextBox ID="AveragePriceText" runat="server"></asp:TextBox>

            <asp:Button ID="AddProductButton" runat="server" Text="Finalize" OnClick="AddProductButton_Click" />
        </div>
    </form>
</body>
</html>
