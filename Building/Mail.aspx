<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mail.aspx.cs" Inherits="Building.Mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
        <tr>
            <td>Представьтесь:</td>
            <td><asp:TextBox ID="txtNick" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Ваш e-mail:</td>
            <td><asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Сообщение:</td>
            <td><asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="300px" Height="124px"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button runat="server" Text="Отправить" ID="btnSubmit" 
        onclick="btnSubmit_Click"/>
</asp:Content>
