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
                    <td class="auto-style3">Date</td>
                    <td class="auto-style5">
                         <asp:DropDownList ID="DropDownListDate" runat="server" Width="180px">
                              <asp:ListItem>Select Date</asp:ListItem>
                              <asp:ListItem>01/15/2016</asp:ListItem>
                              <asp:ListItem>01/16/2016</asp:ListItem>
                              <asp:ListItem>05/15/2016</asp:ListItem>
                              <asp:ListItem>05/16/2016</asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListDate" CssClass="auto-style6" ErrorMessage="Date is required." InitialValue="Select Date"></asp:RequiredFieldValidator>
                    </td>
               </tr>
               <tr>
                    <td class="auto-style3">Table View</td>
                    <td class="auto-style5">
                         <asp:DropDownList ID="DropDownListView" runat="server" Width="180px">
                              <asp:ListItem>Select View</asp:ListItem>
                              <asp:ListItem>Upper</asp:ListItem>
                              <asp:ListItem>Lower</asp:ListItem>
                              <asp:ListItem>Under Sea</asp:ListItem>
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
                    </td>
               </tr>
               <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                         <asp:Button ID="ButtonSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td class="auto-style9">
&nbsp;<br />
                    </td>
               </tr>
               </table>
     <p>
     </p>
</asp:Content>

