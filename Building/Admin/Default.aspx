<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Building.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Users.aspx">Работники</asp:HyperLink><br/>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Projects.aspx">Проекты</asp:HyperLink><br/>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Posts.aspx">Должности</asp:HyperLink><br/>
</asp:Content>
