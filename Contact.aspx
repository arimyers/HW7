<%@ Page Title="" Language="VB" MasterPageFile="~/Golf.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
        <div style="text-align: center; color:white">
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="493px"></asp:TextBox>
        <br />
        <br />
       
         Your message:</div>
        <br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="122px" Width="497px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
</asp:Content>

