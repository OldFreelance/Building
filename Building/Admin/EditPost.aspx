<%@ Page Title="Редактирование должности" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPost.aspx.cs" Inherits="Building.Admin.EditPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
        DataSourceID="EntityDataSource1" DefaultMode="Edit" 
        onitemcommand="FormView1_ItemCommand">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>Имя:</td>
                    <td><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /></td>
                </tr>
                <tr>
                    <td>Зарплата:</td>
                    <td><asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Ок" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>Имя:</td>
                    <td><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /></td>
                </tr>
                <tr>
                    <td>Зарплата:</td>
                    <td><asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ок" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена" />
        </InsertItemTemplate>
    </asp:FormView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=BuildingEntities" 
        DefaultContainerName="BuildingEntities" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
        EntitySetName="Posts" AutoGenerateWhereClause="True">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Id" QueryStringField="Id" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
