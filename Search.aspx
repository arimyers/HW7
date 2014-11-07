<%@ Page Title="" Language="VB" MasterPageFile="~/Golf.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_golfers %>" SelectCommand="SELECT * FROM [arimyers_hw07]"></asp:SqlDataSource>
    <span style="color: #FFFFFF; font-size: medium;"> Search :</span>
    <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="golferID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Visible="False">
        <Columns>
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
            <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
            <asp:BoundField DataField="birthplace" HeaderText="Birthplace" SortExpression="birthplace" />
            <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
            <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
            <asp:BoundField DataField="debut" HeaderText="Debut" SortExpression="debut" />
            <asp:BoundField DataField="swings" HeaderText="Swings" SortExpression="swings" />
        </Columns>
    </asp:GridView>
</asp:Content>

