<%@ Page Title="Админка" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Building.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Users.aspx">Работники</asp:HyperLink><br/>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Projects.aspx">Проекты</asp:HyperLink><br/>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Posts.aspx">Должности</asp:HyperLink><br/>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Messages.aspx">Сообщения пользователей</asp:HyperLink><br/>
    <asp:LinkButton ID="LinkButton1" runat="server" 
        Text="Скачать отчет действий пользователей" onclick="LinkButton1_Click"></asp:LinkButton>
</asp:Content>
