<%@ Page Title="Галерея проектов" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Building.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr><td><asp:Image ID="Image1" runat="server" ImageUrl="Images/1.jpg"/> </td></tr>
        <tr><td><asp:Image ID="Image2" runat="server" ImageUrl="Images/2.jpg"/></td></tr>
        <tr><td><asp:Image ID="Image3" runat="server" ImageUrl="Images/3.jpg"/></td></tr>
        <tr><td><asp:Image ID="Image4" runat="server" ImageUrl="Images/4.jpg"/></td></tr>
        <tr><td><asp:Image ID="Image5" runat="server" ImageUrl="Images/5.jpg"/></td></tr>
        <tr><td><asp:Image ID="Image6" runat="server" ImageUrl="Images/6.jpg"/></td></tr>
    </table>
</asp:Content>
