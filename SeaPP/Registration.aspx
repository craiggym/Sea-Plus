<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
          .auto-style1 {
               width: 100%;
          }
          .auto-style2 {
               width: 165px;
          }
          .auto-style3 {
               width: 165px;
               text-align: right;
          }
          .auto-style4 {
          width: 210px;
     }
          .auto-style5 {
          width: 210px;
          text-align: left;
     }
     .auto-style6 {
          color: #CC0000;
          font-style: italic;
     }
     .auto-style7 {
               width: 165px;
               text-align: right;
               height: 26px;
          }
     .auto-style8 {
          width: 210px;
          text-align: left;
          height: 26px;
     }
     .auto-style9 {
          height: 26px;
     }
     #Reset1 {
          width: 62px;
     }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
          <br />
          <table class="auto-style1">
               <tr>
                    <td class="auto-style3">User Name</td>
                    <td class="auto-style5">
                         <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" CssClass="auto-style6" ErrorMessage="User Name is required."></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style7">E-mail</td>
                    <td class="auto-style8">
                         <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style6" ErrorMessage="E-mail is required."></asp:RequiredFieldValidator>
&nbsp;<br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style6" ErrorMessage="You must enter valid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style7">Password</td>
                    <td class="auto-style8">
                         <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style6" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Confirm Password</td>
                    <td class="auto-style5">
                         <asp:TextBox ID="TextBoxCPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCPass" CssClass="auto-style6" ErrorMessage="Confirm Password is required."></asp:RequiredFieldValidator>
&nbsp;<br />
                         <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="auto-style6" ErrorMessage="Corfirm Password must match with Password" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCPass"></asp:CompareValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Country</td>
                    <td class="auto-style5">
                         <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px" OnSelectedIndexChanged="DropDownListCountry_SelectedIndexChanged">
                              <asp:ListItem>Select Country</asp:ListItem>
                              <asp:ListItem>US</asp:ListItem>
                              <asp:ListItem>UK</asp:ListItem>
                              <asp:ListItem>Canada</asp:ListItem>
                              <asp:ListItem>Unknown</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" CssClass="auto-style6" ErrorMessage="Country is required." InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                         </td>
                    <td>&nbsp;</td>
               </tr>
               <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
               </tr>
          </table>
     </p>
     <p>
     </p>
</asp:Content>

