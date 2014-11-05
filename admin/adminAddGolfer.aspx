<%@ Page Title="" Language="VB" MasterPageFile="~/Golf.master" AutoEventWireup="false" CodeFile="adminAddGolfer.aspx.vb" Inherits="admin_AddGolfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Add Golfer
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="sqlAddGolfer" runat="server" ConnectionString="<%$ ConnectionStrings:db_golfers %>" SelectCommand="SELECT * FROM [arimyers_hw07]" DeleteCommand="DELETE FROM [arimyers_hw07] WHERE [golferID] = @golferID" InsertCommand="INSERT INTO [arimyers_hw07] ([firstName], [lastName], [age], [birthplace], [weight], [country], [debut], [swings]) VALUES (@firstName, @lastName, @age, @birthplace, @weight, @country, @debut, @swings)" UpdateCommand="UPDATE [arimyers_hw07] SET [firstName] = @firstName, [lastName] = @lastName, [age] = @age, [birthplace] = @birthplace, [weight] = @weight, [country] = @country, [debut] = @debut, [swings] = @swings WHERE [golferID] = @golferID">
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
        <asp:FormView ID="fvAddGolfer" runat="server" DataKeyNames="golferID" DataSourceID="sqlAddGolfer" DefaultMode="Insert" CssClass="views" HorizontalAlign="Center">
            <EditItemTemplate>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right">
                            First Name:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Last Name:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Age:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Birthplace:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="birthplaceTextBox" runat="server" Text='<%# Bind("birthplace") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Weight:
                        </td>
                        <td style="text-align:left">
                             <asp:TextBox ID="weightTextBox" runat="server" Text='<%# Bind("weight") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Country:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Debut:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="debutTextBox" runat="server" Text='<%# Bind("debut") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            Swings:
                        </td>
                        <td style="text-align:left">
                            <asp:TextBox ID="swingsTextBox" runat="server" Text='<%# Bind("swings") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td>
                            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>

                
                
            </InsertItemTemplate>
            <ItemTemplate>
            </ItemTemplate>
        </asp:FormView>
</asp:Content>

