<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
     .auto-style1 {
          width: 137%;
     }
     .auto-style2 {
          height: 23px;
     }
     .auto-style3 {
          text-align: right;
          width: 165px;
     }
     .auto-style4 {
          height: 23px;
          text-align: right;
          width: 165px;
     }
     .auto-style6 {
               width: 165px;
               height: 23px;
          }
     .auto-style7 {
          text-align: center;
          width: 231px;
     }
     .auto-style8 {
          height: 23px;
          text-align: center;
          width: 231px;
     }
     .auto-style9 {
          height: 23px;
          width: 231px;
          text-align: center;
     }
     .auto-style10 {
          font-style: italic;
          color: #CC0000;
     }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
     <br />
</p>
<table class="auto-style1">
     <tr>
          <td class="auto-style4">User Name</td>
          <td class="auto-style8">
               <asp:TextBox ID="TextBoxUser" runat="server" Width="180px"></asp:TextBox>
          </td>
          <td class="auto-style2">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUser" CssClass="auto-style10" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
          </td>
     </tr>
     <tr>
          <td class="auto-style3">Password</td>
          <td class="auto-style7">
               <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
          </td>
          <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style10" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
          </td>
     </tr>
     <tr>
          <td class="auto-style6"></td>
          <td class="auto-style9">
               <asp:Button ID="ButtonLogin" runat="server" Height="31px" OnClick="ButtonLogin_Click" Text="Login" Width="91px" />
          </td>
          <td class="auto-style2"></td>
     </tr>
     <tr>
          <td class="auto-style6"></td>
          <td class="auto-style9"></td>
          <td class="auto-style2"></td>
     </tr>
</table>
<p>
</p>
</asp:Content>

