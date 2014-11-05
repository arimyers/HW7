<%@ Page Title="" Language="VB" MasterPageFile="~/Golf.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Home
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="body">
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
</asp:Content>

