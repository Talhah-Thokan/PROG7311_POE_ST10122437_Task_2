<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmCentralSystemsProducts.aspx.cs" Inherits="PROG7311_POE_ST10122437_Task_2.FarmCentralSystemsProducts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products Enquiry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1em 0;
            font-size: 24px;
            font-weight: bold;
        }

        section {
            padding: 20px;
            max-width: 800px;
            margin: auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        asp:Button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
        }

        asp:Button:hover {
            background-color: #45a049;
        }

        asp:GridView {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        asp:GridView th, asp:GridView td {
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
    <header>Products Enquiry</header>
    <section>
        <form runat="server">
            <asp:Button ID="AddProductButton" runat="server" OnClick="AddProductButton_Click" Text="Add Products" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" SortExpression="ProductCategory" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                    <asp:BoundField DataField="ProductAvgPrice" HeaderText="ProductAvgPrice" SortExpression="ProductAvgPrice" />
                    <asp:BoundField DataField="ProductQtyOnHand" HeaderText="ProductQtyOnHand" SortExpression="ProductQtyOnHand" />
                </Columns>
            </asp:GridView> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmCentralSystemsConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </form>
    </section>
</body>
</html>
