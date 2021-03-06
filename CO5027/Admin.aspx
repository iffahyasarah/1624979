﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <p>
    <br />
</p>
    <p>
        &nbsp;</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624979_db_1624979_user_db_1624979_co5027ConnectionString %>" SelectCommand="SELECT [Id], [Email], [UserName] FROM [AspNetUsers]"></asp:SqlDataSource>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
        <EditItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Quantity:
            <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            Product_Price:
            <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            Product_Quantity:
            <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("Product_Quantity") %>' />
            <br />
            Product_Price:
            <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("Product_Price") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624979_db_1624979_user_db_1624979_co5027ConnectionString %>" DeleteCommand="DELETE FROM [Product_Tbl] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))" InsertCommand="INSERT INTO [Product_Tbl] ([Product_Name], [Product_Description], [Product_Quantity], [Product_Price]) VALUES (@Product_Name, @Product_Description, @Product_Quantity, @Product_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product_Tbl]" UpdateCommand="UPDATE [Product_Tbl] SET [Product_Name] = @Product_Name, [Product_Description] = @Product_Description, [Product_Quantity] = @Product_Quantity, [Product_Price] = @Product_Price WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Product_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Description" Type="String" />
            <asp:Parameter Name="original_Product_Quantity" Type="String" />
            <asp:Parameter Name="original_Product_Price" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Description" Type="String" />
            <asp:Parameter Name="Product_Quantity" Type="String" />
            <asp:Parameter Name="Product_Price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Product_Description" Type="String" />
            <asp:Parameter Name="Product_Quantity" Type="String" />
            <asp:Parameter Name="Product_Price" Type="String" />
            <asp:Parameter Name="original_Product_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Product_Description" Type="String" />
            <asp:Parameter Name="original_Product_Quantity" Type="String" />
            <asp:Parameter Name="original_Product_Price" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" InsertVisible="False" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                <asp:BoundField DataField="Product_Quantity" HeaderText="Product_Quantity" SortExpression="Product_Quantity" />
                <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" SortExpression="Product_Price" />
                <asp:HyperLinkField DataNavigateUrlFields="Product_ID" DataNavigateUrlFormatString="UploadProduct.aspx?id=(0)" HeaderText="Upload" Text="Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624979_db_1624979_user_db_1624979_co5027ConnectionString %>" DeleteCommand="DELETE FROM [Product_Tbl] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))" InsertCommand="INSERT INTO [Product_Tbl] ([Product_Name], [Product_Description], [Product_Quantity], [Product_Price]) VALUES (@Product_Name, @Product_Description, @Product_Quantity, @Product_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product_Tbl]" UpdateCommand="UPDATE [Product_Tbl] SET [Product_Name] = @Product_Name, [Product_Description] = @Product_Description, [Product_Quantity] = @Product_Quantity, [Product_Price] = @Product_Price WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL)) AND (([Product_Quantity] = @original_Product_Quantity) OR ([Product_Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product_Price] = @original_Product_Price) OR ([Product_Price] IS NULL AND @original_Product_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="String" />
                <asp:Parameter Name="original_Product_Price" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="String" />
                <asp:Parameter Name="Product_Price" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="String" />
                <asp:Parameter Name="Product_Price" Type="String" />
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="String" />
                <asp:Parameter Name="original_Product_Price" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Refresh" />
    </p>
<p>
</p>
    


</asp:Content>


