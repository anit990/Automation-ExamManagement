﻿<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="viewstudetndetails.aspx.vb" Inherits="viewstudetndetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 66%;
            height: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td align="center" 
                style="font-size: xx-large; font-weight: bold; color: #0000FF">
                View Student Details</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Height="204px" Width="614px" AllowPaging="True" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" 
                            SortExpression="sid" />
                        <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                        <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                        <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:automationexamDBConnectionString %>" 
                    DeleteCommand="DELETE FROM [student] WHERE [sid] = @sid" 
                    InsertCommand="INSERT INTO [student] ([sid], [sname], [dept], [Sem], [phone], [year]) VALUES (@sid, @sname, @dept, @Sem, @phone, @year)" 
                    SelectCommand="SELECT * FROM [student]" 
                    UpdateCommand="UPDATE [student] SET [sname] = @sname, [dept] = @dept, [Sem] = @Sem, [phone] = @phone, [year] = @year WHERE [sid] = @sid">
                    <DeleteParameters>
                        <asp:Parameter Name="sid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sid" Type="String" />
                        <asp:Parameter Name="sname" Type="String" />
                        <asp:Parameter Name="dept" Type="String" />
                        <asp:Parameter Name="Sem" Type="Int32" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="year" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sname" Type="String" />
                        <asp:Parameter Name="dept" Type="String" />
                        <asp:Parameter Name="Sem" Type="Int32" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="year" Type="Int32" />
                        <asp:Parameter Name="sid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

