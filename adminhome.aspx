﻿<%@ Page Title="" Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="adminhome.aspx.vb" Inherits="adminhome" %>

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
                WELCOM TO ADMIN HOME PAGE</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image2" runat="server" Height="333px" 
                    ImageUrl="~/images/index.jpg" Width="741px" />
            </td>
        </tr>
    </table>
</asp:Content>

