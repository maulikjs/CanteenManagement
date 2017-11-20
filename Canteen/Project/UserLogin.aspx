<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>
<form runat="server">
    <p>
        <table class="style1" width="100%" style="background-image: url('images/wingwahbackgroundchinese.jpg')">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                     
                   <asp:Label ID="Label1" runat="server" 
                        style="color: #FFFFFF; font-size: xx-large; font-family: Candara" 
                        Text="User Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" 
                        placeholder="User ID" CssClass="intabular" 
                        style="font-size: large" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label2" runat="server" 
                        style="font-size: large; color: #FFFF66; font-family: Candara" 
                        Width="100%"></asp:Label>
                        <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" 
                        placeholder="Password" CssClass="intabular" Height="40px" 
                        style="font-size: large" Width="100%" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label3" runat="server" 
                        style="font-size: large; color: #FFFF66; font-family: Candara" 
                        Width="100%"></asp:Label>
                        <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" BorderColor="#004221" 
                        CssClass="intabular" 
                        style="font-size: x-large; font-family: Candara; color: #0E7644" Text="Login" 
                        Width="80%" onclick="Button1_Click" /></td>
                
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                        
                        style="color: #66FFFF; font-size: large; font-family: Candara; font-weight: 700" 
                        Width="100%">Register Now</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td  colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </p>

    </form>