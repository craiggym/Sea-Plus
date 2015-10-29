<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
          <br />
     </p>
     <p>
          <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               SelectCommand="SELECT * FROM [User]" >
          </asp:SqlDataSource>
 


          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceRegistration">
               <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
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

