<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsPurchases.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsPurchases" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchases</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            font-weight: bold;
            margin-bottom: 10px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        asp:DropDownList {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        asp:Button {
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

        section {
            margin-top: 20px;
        }

        asp:GridView {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        asp:GridView th,
        asp:GridView td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        asp:GridView th {
            background-color: #f2f2f2;
        }

        asp:GridView tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        asp:GridView tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <form id="PurchasedStocksForm" runat="server">
        <p>Filter Purchases</p>
        <label>Select Purchase Filter</label>  
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Farmer</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
        <section>
            <asp:Button ID="CreatePurchaseButton" runat="server" OnClick="CreatePurchaseButton_Click" Text="Create a Purchase" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvoiceNo" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="InvoiceNo" HeaderText="InvoiceNo" ReadOnly="True" SortExpression="InvoiceNo" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                    <asp:BoundField DataField="QtySupplied" HeaderText="QtySupplied" SortExpression="QtySupplied" />
                    <asp:BoundField DataField="SuppliedPrice" HeaderText="SuppliedPrice" SortExpression="SuppliedPrice" />
                    <asp:BoundField DataField="DateSupplied" HeaderText="DateSupplied" SortExpression="DateSupplied" />
                    <asp:BoundField DataField="FarmerID" HeaderText="FarmerID" SortExpression="FarmerID" />
                </Columns>
            </asp:GridView> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmCentralSystemsConnectionString %>" SelectCommand="SELECT * FROM [PurchasedStocks]"></asp:SqlDataSource>
        </section>
    </form>
</body>
</html>
