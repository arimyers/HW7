<%@ Page Title="" Language="VB" MasterPageFile="~/Golf.master" AutoEventWireup="false" CodeFile="adminControl.aspx.vb" Inherits="admin_adminControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:HyperLink ID="link_a_Home" runat="server" NavigateUrl="~/admin/adminDefault.aspx" ForeColor="White">Admin Home</asp:HyperLink>
    <br />
   <asp:HyperLink ID="link_a_AddGolfer" runat="server" NavigateUrl="~/admin/adminAddGolfer.aspx" ForeColor="White">Add Golfer</asp:HyperLink>
    <br />
   
        <asp:HyperLink ID="link_a_AboutUs" runat="server" NavigateUrl="~/admin/adminAboutUs.aspx" ForeColor="White">About Us</asp:HyperLink>
    
        <br />
    
        <asp:HyperLink ID="link_a_Contact" runat="server" NavigateUrl="~/admin/adminContact.aspx" ForeColor="White">Contact</asp:HyperLink>
        
    
</asp:Content>

