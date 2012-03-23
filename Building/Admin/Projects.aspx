<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Building.Admin.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
        DataSourceID="EntityDataSource1" Width="500px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="Создать" NavigateUrl="EditProject.aspx?id=0" ForeColor="White"></asp:HyperLink>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" Text="Правка" NavigateUrl='<%# "EditProject.aspx?id="+Eval("Id") %>'></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" runat="server" Text="Удалить" NavigateUrl='<%# "DeleteProject.aspx?id="+Eval("Id") %>'></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle Width="100px" />
            </asp:TemplateField>
            <asp:BoundField DataField="BuildingPlace" HeaderText="Место" SortExpression="BuildingPlace" />
            <asp:BoundField DataField="DateStart" HeaderText="Дата начала" SortExpression="DateStart" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="DateEnd" HeaderText="Дата оконч" SortExpression="DateEnd" DataFormatString="{0:d}"/>
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
        DefaultContainerName="BuildingEntities" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
        EntitySetName="Projects" EntityTypeFilter="Project">
    </asp:EntityDataSource>
</asp:Content>
