<%@ Page Title="Главная" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Building._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <% if (HttpContext.Current.User.Identity.IsAuthenticated)
       { %>

        <h2>
            Добро пожаловать
        </h2>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>Ваш логин:</td>
                        <td><asp:Label ID="LoginLabel" runat="server" Text='<%# Bind("Login") %>' /></td>
                    </tr>
                    <tr>
                        <td>ФИО:</td>
                        <td><asp:Label ID="FIOLabel" runat="server" Text='<%# Bind("FIO") %>' /></td>
                    </tr>
                    <tr>
                        <td>Ваша должность:</td>
                        <td><asp:Label ID="PostIdLabel" runat="server" Text='<%# Bind("Post.Name") %>' /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=BuildingEntities" 
        DefaultContainerName="BuildingEntities" EnableFlattening="False" 
        EntitySetName="Users" AutoGenerateWhereClause="True" Include="Post">
        <WhereParameters>
            <asp:Parameter runat="server" Name="Login" Type="String"/>
        </WhereParameters>
    </asp:EntityDataSource>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Mail.aspx">Обратная связь</asp:HyperLink>
    <% }
       else
       {%>
        <h2>
            Вы не авторизированы
        </h2>
        <p>
            Нажмите "Войти" чтобы авторизоваться.
        </p>
    <% } %>
</asp:Content>
