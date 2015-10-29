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
               SelectCommand="SELECT * FROM [Reservation]" >
          </asp:SqlDataSource>
 


          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceRegistration" DataKeyNames="Rnum">
               <Columns>
                    <asp:BoundField DataField="Rnum" HeaderText="Rnum" InsertVisible="False" ReadOnly="True" SortExpression="Rnum" />
                    <asp:BoundField DataField="NoOfPeople" HeaderText="NoOfPeople" SortExpression="NoOfPeople" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="TableView" HeaderText="TableView" SortExpression="TableView" />
                    <asp:BoundField DataField="AvailableSeat" HeaderText="AvailableSeat" SortExpression="AvailableSeat" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
     </p>
</asp:Content>

