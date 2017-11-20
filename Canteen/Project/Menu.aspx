<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<html>
<head>
 <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            height: 26px;
        }
    </style>
       <script type = "text/javascript">
           function Confirm() {
               var confirm_value = document.createElement("INPUT");
               confirm_value.type = "hidden";
               confirm_value.name = "confirm_value";
               if (confirm("Do you want to Delete this Food Item?")) {
                   confirm_value.value = "Yes";
               } else {
                   confirm_value.value = "No";
               }
               document.forms[0].appendChild(confirm_value);
           }
    </script>
</head>
<form runat="server">
<center>
    <div>
 <table width="100%">
 <tr>
 <td colspan="2" align="center">
     <asp:Label ID="Label1" runat="server" Text="Order Details" Font-Bold="True" 
         style="font-family: candara; font-size: x-large; font-style: italic" 
         Width="100%"></asp:Label></td>
 </tr>
  <tr><td colspan="2"><br /></td></tr>
   <tr><td colspan="2" align="center">
    <asp:GridView ID="GridView1" runat="server" Width="100%" OnRowCommand="GridView1_RowCommand" style="color: #000000; font-family: candara">
            <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" OnClientClick="Confirm()" runat="server" CommandArgument='<%#Eval("foodno")%>' Text ="Delete Item" CommandName ="Delete" Font-Bold="True" Font-Size="Large" Font-Underline="True" style="font-family: candara; color: #CC0000"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
       </asp:GridView>
   </td></tr>
   <tr><td colspan="2"><br /></td></tr>
   <tr><td align="right" width="50%">
       <asp:Label ID="Label7" runat="server" Text="Tranaction ID:" 
           Font-Names="Candara" Width="100%"></asp:Label></td>
       <td align="left" width="50%">
           <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
       
       </tr>
 <tr><td colspan="2"><br /></td></tr>
 
   <tr><td align="right" width="50%">
       <asp:Label ID="Label11" runat="server" Text="User ID:" Width="100%" 
           Font-Names="Candara"></asp:Label></td>
   <td align="left" width="50%">
       <asp:Label ID="Label15" runat="server" Width="100%"></asp:Label>
   </td></tr>
 
   <tr><td colspan="2"><br /></td></tr>
   <tr><td align="right" width="50%">
       <asp:Label ID="Label13" runat="server" Text="Combo Pack " Width="100%"></asp:Label></td><td align="left" width="50%">
           <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
               RepeatDirection="Horizontal" 
               onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
               Width="100%">
               <asp:ListItem>Yes</asp:ListItem>
               <asp:ListItem>No</asp:ListItem>
           </asp:RadioButtonList>
       </td></tr>
   </table>
        <asp:Panel ID="Panel1" runat="server">
        
   <table  width="100%">
      <tr><td colspan="2"><br /></td></tr>
  <tr><td align="right" width="50%">
      <asp:Label ID="Label5" runat="server" Text="Category:" Font-Names="Candara" 
          Width="100%"></asp:Label></td>
      <td align="left" width="50%">
          <asp:DropDownList ID="DropDownList2" runat="server"  
              onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
              AutoPostBack="True" Width="100%">
              <asp:ListItem>--Select--</asp:ListItem>
          </asp:DropDownList>
      </td></tr>
   <tr><td colspan="2"><br /></td></tr>
 <tr><td align="right" width="50%">
     <asp:Label ID="Label2" runat="server" Text="Food Name:" Font-Names="Candara" 
         Width="100%"></asp:Label></td>
     <td align="left" width="50%">  
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
             onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="100%">
             <asp:ListItem>--Select--</asp:ListItem>
         </asp:DropDownList>
     </td>
     </tr>
     </table>
     </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        
     <table  width="100%">
     <tr><td colspan="2"><br /></td></tr>
<tr><td align="right" width="50%">
    <asp:Label ID="Label12" runat="server" Text="Combo Name" Width="100%"></asp:Label></td><td align="left" width="50%">
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="100%">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
    </td></tr>
    </table>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
       
    <table  width="100%">
     <tr><td colspan="2"><br /></td></tr>
      <tr><td align="right" class="style2" width="50%">
     <asp:Label ID="Label3" runat="server" Text="Quantity:" Font-Names="Candara" 
              Width="100%"></asp:Label></td>
     <td align="left" class="style2" width="50%">
         <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
             AutoPostBack="True" Width="100%"></asp:TextBox>
     </td>
     </tr>
     <tr><td colspan="2" class="style1"><br /></td></tr>
        <tr><td align="right" width="50%">
     <asp:Label ID="Label4" runat="server" Text="Total Amount:" Font-Names="Candara" 
                Width="100%"></asp:Label></td>
     <td align="left" width="50%">
         <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
     </td>
     </tr>
     <tr><td colspan="2" class="style1"><br /></td></tr>
        <tr><td align="right" width="50%">
     <asp:Label ID="Label9" runat="server" Text="Date:" Font-Names="Candara" Width="100%"></asp:Label></td>
     <td align="left" width="50%">
         <asp:TextBox ID="TextBox4" type="date" runat="server" Width="100%"></asp:TextBox>
     </td>
     </tr>
     <tr><td colspan="2" class="style1"><br /></td></tr>
        <tr><td align="right" width="50%">
     <asp:Label ID="Label10" runat="server" Text="Time:" Font-Names="Candara" Width="100%"></asp:Label></td>
     <td align="left" width="50%">
         <asp:TextBox ID="TextBox5" type="time" runat="server" Width="100%"></asp:TextBox>
     </td>
     </tr>
     <tr><td colspan="2">
         <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
         <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
         <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
         <br /></td></tr>
     <tr><td colspan="2" align="center">
         <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
             style="font-size: large; height: 33px;" Width="80%" />&nbsp;
         
         </td></tr>
 </table>
  </asp:Panel>
 <center> <asp:Button Id="Button2" runat="server" Text="Confirm" 
         OnClick="Button2_Click" style="font-size: large" Width="80%"/></center>
</div>
</center>
</form>
</html>