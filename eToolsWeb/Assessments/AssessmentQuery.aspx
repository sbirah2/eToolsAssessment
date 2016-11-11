<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AssessmentQuery.aspx.cs" Inherits="Assessments_AssessmentQuery" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
                <h1>Assessment: Category Stock List</h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="QueryODS">
        <ItemTemplate>
            <h1><%# Eval("CategoryDescription") %></h1>
            <asp:ListView ID="ListView1" runat="server" DataSource='<%# Eval("Stocks")%>'>
                <ItemTemplate>
                    <tr>
                        <td style="padding:15px">
                            <%# Eval("Name") %>
                        </td>
                        <td style="padding:15px">
                            <%# Eval("OnHand") %>
                        </td>
                        <td style="padding:15px">
                            <%# Eval("MarkUp") %>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <th runat="server">Description</th>
                            <th runat="server">QOH</th>
                            <th runat="server">Markup</th>
                        </tr>
                        <tr runat="server" id="itemPlaceholder">

                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </ItemTemplate>
    </asp:Repeater>
    <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    <asp:ObjectDataSource ID="QueryODS" 
        runat="server" 
        DataObjectTypeName="eToolsSystem.Entities.Category" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="CategoryStockList" 
        TypeName="eToolsSystem.BLL.ToolsController" 
       >

    </asp:ObjectDataSource>
</asp:Content>

