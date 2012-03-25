<%@ Page Title="Редактирование пользователя" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Building.Admin.EditUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptLocalization="True" EnableScriptGlobalization="True">
    </asp:ToolkitScriptManager>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
        DataSourceID="EntityDataSource1" DefaultMode="Edit" 
        onitemcommand="FormView1_ItemCommand" 
        oniteminserting="FormView1_ItemInserting" 
        onitemupdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>Логин:</td>
                    <td><asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' /></td>
                </tr>
                <tr>
                    <td>Фио:</td>
                    <td><asp:TextBox ID="FIOTextBox" runat="server" Text='<%# Bind("FIO") %>' /></td>
                </tr>
                <tr>
                    <td>Пароль:</td>
                    <td><asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' /></td>
                </tr>
                <tr>
                    <td>День рождения:</td>
                    <td>
                        <asp:TextBox ID="txtBirthday" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                        <asp:CalendarExtender  ID="CalendarExtender1"  runat="server" TargetControlID="txtBirthday" SelectedDate='<%# Eval("Birthday") %>' Format="D"/>
                    </td>
                </tr>
                <tr>
                    <td>Должность:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="EntityDataSource2" DataTextField="Name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                            ConnectionString="name=BuildingEntities" 
                            DefaultContainerName="BuildingEntities" EnableFlattening="False" 
                            EntitySetName="Posts" Select="it.[Id], it.[Name]">
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Администратор:</td>
                    <td><asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' /></td>
                </tr>
                <tr>
                    <td>В штате:</td>
                    <td><asp:CheckBox ID="IsAllowCheckBox" runat="server" Checked='<%# Bind("IsAllow") %>' /></td>
                </tr>
                <tr>
                    <td>Номер приказа об увольнении:</td>
                    <td><asp:TextBox ID="OrderNoTextBox" runat="server" Text='<%# Bind("OrderNo") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Ок" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена" />
        </EditItemTemplate>

        <InsertItemTemplate>
            <table>
                <tr>
                    <td>Логин:</td>
                    <td><asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' /></td>
                </tr>
                <tr>
                    <td>Фио:</td>
                    <td><asp:TextBox ID="FIOTextBox" runat="server" Text='<%# Bind("FIO") %>' /></td>
                </tr>
                <tr>
                    <td>Пароль:</td>
                    <td><asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' /></td>
                </tr>
                <tr>
                    <td>День рождения:</td>
                    <td>
                        <asp:TextBox ID="txtBirthday" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                        <asp:CalendarExtender  ID="CalendarExtender1"  runat="server" TargetControlID="txtBirthday" SelectedDate='<%# Eval("Birthday") %>' Format="D"/>
                    </td>
                </tr>
                <tr>
                    <td>Должность:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="EntityDataSource2" DataTextField="Name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                            ConnectionString="name=BuildingEntities" 
                            DefaultContainerName="BuildingEntities" EnableFlattening="False" 
                            EntitySetName="Posts" Select="it.[Id], it.[Name]">
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Администратор:</td>
                    <td><asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked="False" /></td>
                </tr>
                <tr>
                    <td>В штате:</td>
                    <td><asp:CheckBox ID="IsAllowCheckBox" runat="server" Checked="True" /></td>
                </tr>
                <tr>
                    <td>Номер приказа об увольнении:</td>
                    <td><asp:TextBox ID="OrderNoTextBox" runat="server" Text="" /></td>
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
        EntitySetName="Users" AutoGenerateWhereClause="True">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Id" QueryStringField="Id" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
