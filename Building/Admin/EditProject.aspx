<%@ Page Title="Редактирование проекта" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProject.aspx.cs" Inherits="Building.Admin.EditProject" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=4.1.51116.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
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
                    <td>Место:</td>
                    <td><asp:TextBox ID="BuildingPlaceTextBox" runat="server" Text='<%# Bind("BuildingPlace") %>' /></td>
                </tr>
                <tr>
                    <td>Дата начала:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateStart") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox1" SelectedDate='<%# Eval("DateStart") %>'/>
                    </td>
                </tr>
                <tr>
                    <td>Дата оконч:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DateEnd") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2" SelectedDate='<%# Eval("DateEnd") %>'/>
                    </td>
                </tr>
                <tr>
                    <td>Бригадир:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="EntityDataSource2" DataTextField="FIO" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                            ConnectionString="name=BuildingEntities" 
                            DefaultContainerName="BuildingEntities" EnableFlattening="False" 
                            EntitySetName="Users" Select="it.[Id], it.[FIO]" Where="it.PostId=2">
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Номер бригады:</td>
                    <td><asp:TextBox ID="BrigadeNumTextBox" runat="server" Text='<%# Bind("BrigadeNum") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Ок" />
            &nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>Место:</td>
                    <td><asp:TextBox ID="BuildingPlaceTextBox" runat="server" Text='<%# Bind("BuildingPlace") %>' /></td>
                </tr>
                <tr>
                    <td>Дата начала:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateStart") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox1" SelectedDate='<%# Eval("DateStart") %>'/>
                    </td>
                </tr>
                <tr>
                    <td>Дата оконч:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DateEnd") %>'></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox2" SelectedDate='<%# Eval("DateEnd") %>'/>
                    </td>
                </tr>
                <tr>
                    <td>Бригадир:</td>
                    <%--<td><asp:TextBox ID="ForemanIdTextBox" runat="server" Text='<%# Bind("ForemanId") %>' /></td>--%>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="EntityDataSource2" DataTextField="FIO" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                            ConnectionString="name=BuildingEntities" 
                            DefaultContainerName="BuildingEntities" EnableFlattening="False" 
                            EntitySetName="Users" Select="it.[Id], it.[FIO]" Where="it.PostId=2">
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>Номер бригады:</td>
                    <td><asp:TextBox ID="BrigadeNumTextBox" runat="server" Text='<%# Bind("BrigadeNum") %>' /></td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ок" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Отмена" />
        </InsertItemTemplate>
    </asp:FormView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        AutoGenerateWhereClause="True" ConnectionString="name=BuildingEntities" 
        DefaultContainerName="BuildingEntities" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
        EntitySetName="Projects">
        <WhereParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Id" QueryStringField="Id" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
