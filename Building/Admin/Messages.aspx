<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Building.Admin.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Id" DataSourceID="EntityDataSource1" 
        ForeColor="#333333" GridLines="None" Width="500px" AllowPaging="True" 
        AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nick" HeaderText="Ник" SortExpression="Nick" >
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="E-mail" SortExpression="Email" >
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="Дата" SortExpression="Date" 
                DataFormatString="{0:F}" >
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Text" HeaderText="Текст" SortExpression="Text" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=BuildingEntities" 
        DefaultContainerName="BuildingEntities" EnableFlattening="False" 
        EntitySetName="Messages">
    </asp:EntityDataSource>
</asp:Content>
