<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Golfer.aspx.vb" Inherits="Golfer" %>

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
    <div>

        <asp:SqlDataSource ID="sqlGolfer" runat="server" ConnectionString="<%$ ConnectionStrings:db_golfers %>" DeleteCommand="DELETE FROM [arimyers_hw07] WHERE [golferID] = @golferID" InsertCommand="INSERT INTO [arimyers_hw07] ([firstName], [lastName], [age], [birthplace], [weight], [country], [debut], [swings]) VALUES (@firstName, @lastName, @age, @birthplace, @weight, @country, @debut, @swings)" SelectCommand="SELECT * FROM [arimyers_hw07] WHERE ([golferID] = @golferID)" UpdateCommand="UPDATE [arimyers_hw07] SET [firstName] = @firstName, [lastName] = @lastName, [age] = @age, [birthplace] = @birthplace, [weight] = @weight, [country] = @country, [debut] = @debut, [swings] = @swings WHERE [golferID] = @golferID">
            <DeleteParameters>
                <asp:Parameter Name="golferID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="birthplace" Type="String" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="debut" Type="Int32" />
                <asp:Parameter Name="swings" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="golferID" QueryStringField="golferID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="birthplace" Type="String" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="debut" Type="Int32" />
                <asp:Parameter Name="swings" Type="String" />
                <asp:Parameter Name="golferID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="golferID" DataSourceID="sqlGolfer" Height="50px" Width="261px">
            <Fields>
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="birthplace" HeaderText="Birthplace" SortExpression="birthplace" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="debut" HeaderText="Debut" SortExpression="debut" />
                <asp:BoundField DataField="swings" HeaderText="Swings" SortExpression="swings" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:Label ID="lblDel" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>
