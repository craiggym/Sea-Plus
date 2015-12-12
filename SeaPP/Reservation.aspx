<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Resevation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">

          .auto-style1 {
               width: 100%;
          }
          .auto-style3 {
               width: 165px;
               text-align: right;
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
     </p>
          <table class="auto-style1">
               <tr>
                    <td class="auto-style3">Date (MM/DD/YYYY)</td>
                    <td class="auto-style5">
                         <asp:TextBox ID="TextBoxDate" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDate" CssClass="auto-style6" ErrorMessage="Date is required."></asp:RequiredFieldValidator>
                         <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxDate" CssClass="auto-style6" ErrorMessage="Please Enter Valid Date " ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/\d{4}$"></asp:RegularExpressionValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Time</td>
                    <td class="auto-style5">
                         <asp:DropDownList ID="DropDownListTime" runat="server" Width="180px">
                              <asp:ListItem>Select Time</asp:ListItem>
                              <asp:ListItem>17:30</asp:ListItem>
                              <asp:ListItem>18:30</asp:ListItem>
                              <asp:ListItem>19:30</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownListTime" CssClass="auto-style6" ErrorMessage="Time is required." InitialValue="Select Time"></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Table View</td>
                    <td class="auto-style5">
                         <asp:DropDownList ID="DropDownListView" runat="server" Width="180px">
                              <asp:ListItem>Select View</asp:ListItem>
                              <asp:ListItem>Upper</asp:ListItem>
                              <asp:ListItem>Lower</asp:ListItem>
                              <asp:ListItem>Balcony</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListView" CssClass="auto-style6" ErrorMessage="View is required." InitialValue="Select View"></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Number of People</td>
                    <td class="auto-style5">
                         <asp:TextBox ID="TextBoxPeople" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPeople" CssClass="auto-style6" ErrorMessage="Number is required."></asp:RequiredFieldValidator>
                         <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPeople" CssClass="auto-style6" ErrorMessage="Number should be from 1 to 20" ValidationExpression="^([1-9]|1[0-9]|20)$"></asp:RegularExpressionValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                         <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" Width="80px" />
                    </td>
                    <td class="auto-style9">
&nbsp;<br />
                    </td>
               </tr>
               <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                         <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Go Back" Width="80px" CausesValidation="False"/>
                    </td>
                    <td class="auto-style9">
                         &nbsp;</td>
               </tr>
               </table>
     <p>
     </p>
</asp:Content>

