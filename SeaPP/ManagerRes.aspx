<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerRes.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
          <br />
     </p>
     <p>
          <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               SelectCommand="SELECT [Rnum], [NoOfPeople], [Date], [Time], [TableView] FROM [Reservation]" DeleteCommand="DELETE FROM Reservation
WHERE Rnum = @Rnum" >
               <DeleteParameters>
                    <asp:Parameter Name="Rnum" />
               </DeleteParameters>
          </asp:SqlDataSource>
 


          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceRegistration" DataKeyNames="Rnum">
               <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Rnum" HeaderText="Rnum" InsertVisible="False" ReadOnly="True" SortExpression="Rnum" />
                    <asp:BoundField DataField="NoOfPeople" HeaderText="NoOfPeople" SortExpression="NoOfPeople" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="TableView" HeaderText="TableView" SortExpression="TableView" />
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
     </p>
     <p>
          <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Log Out" Width="200px" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="ButtonNew" runat="server" OnClick="ButtonNew_Click" Text="Make another Reservation" Width="200px" />
     </p>
</asp:Content>

