<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="NewReservation.aspx.cs" Inherits="NewReservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
          <br />
     </p>
     <p>
          <asp:Button ID="ButtonNewRes" runat="server" OnClick="ButtonNewRes_Click" Text="New Reservation" Width="200px" />
     </p>
     <p>
          <asp:Button ID="ButtonView" runat="server" OnClick="ButtonView_Click" Text="View Current Reservation" Width="200px" />
     </p>
     <p>
          <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Log Out" Width="200px" />
     </p>
     <p>
     </p>
</asp:Content>

