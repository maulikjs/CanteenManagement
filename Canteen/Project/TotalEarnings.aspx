<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="TotalEarnings.aspx.cs" Inherits="TotalEarnings" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><table width="80%">
<tr><td colspan="4" align="center">
    <asp:Label ID="Label1" runat="server" 
        Text="Total Earnings" Font-Bold="True" 
        style="font-family: candara; font-size: x-large; font-style: italic"></asp:Label></td></tr>
<tr><td colspan="4"><br /></td></tr>
<tr><td align="right">
    <asp:Label ID="Label2" runat="server" Text="From Date" Font-Names="Candara"></asp:Label></td>
<td align="left">
    <asp:TextBox ID="TextBox1" type="date" required runat="server"></asp:TextBox></td>
   <td align="right">
    <asp:Label ID="Label3" runat="server" Text="To Date" Font-Names="Candara"></asp:Label></td>
<td align="left">
    <asp:TextBox ID="TextBox2" type="date" required runat="server"></asp:TextBox></td>
    
</tr> 
<tr><td colspan="4" align="center"><br /></td></tr>

<tr><td colspan="4" align="center">
    <asp:Button ID="Button1" runat="server" Text="Calculate" 
        onclick="Button1_Click" /></td></tr>
    <tr><td colspan="4"><br /></td></tr>
    <tr><td colspan="4" align="center">
        <asp:Table ID="Table1" Width="100%" runat="server">
       
        </asp:Table>
    </td></tr>
</table></center>

</asp:Content>

