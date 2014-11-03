<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="HW7SS.css" rel="stylesheet" type="text/css" />
</head>
<body class="body">
    <form id="form1" runat="server">
    <div class="header">
        
        <h1 style="color: #FFFFFF; font-family: 'Eras Bold ITC'; text-decoration: underline;">Aric&#39;s Golfer Info</h1>
        <h3 style="color: #FFFFFF">The one stop shop for basic golfer knowledge!</h3>
        <h2 style="color: #FFFFFF"><a href="Default.aspx" style="color: #FFFFFF">Home</a>&nbsp;&nbsp; |&nbsp;&nbsp; 
            <a href="AddGolfer.aspx" style="color: #FFFFFF">Add Golfer</a>&nbsp;&nbsp; |&nbsp;&nbsp; 
            <a href="AboutUs.aspx" style="color: #FFFFFF">About Us</a>&nbsp;&nbsp; |&nbsp;&nbsp; 
            <a href="Contact.aspx" style="color: #FFFFFF">Contact</a></h2>
        
    
    </div>
    <div class="center">

        <asp:SqlDataSource ID="sqlHome" runat="server" ConnectionString="<%$ ConnectionStrings:db_golfers %>" SelectCommand="SELECT [golferID], [firstName], [lastName] FROM [arimyers_hw07]"></asp:SqlDataSource>
        <asp:GridView ID="gvMain" runat="server" AutoGenerateColumns="False" DataSourceID="sqlHome" Height="225px" HorizontalAlign="Center" style="font-size: large" Width="663px" CssClass="views">
            <AlternatingRowStyle BackColor="#226622" />
            <Columns>
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:HyperLinkField DataNavigateUrlFields="golferID" DataNavigateUrlFormatString="Golfer.aspx?golferID={0}" Text="Select" >
                <ControlStyle ForeColor="White" />
                </asp:HyperLinkField>
            </Columns>
            <HeaderStyle BackColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
        </asp:GridView>

    </div>
    </form>
</body>
</html>
