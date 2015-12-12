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
               SelectCommand="SELECT * FROM [User]" DeleteCommand="DELETE FROM [User]
WHERE UserName = @UserName" >
               <DeleteParameters>
                    <asp:Parameter Name="UserName" />
               </DeleteParameters>
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
          &nbsp;</p>
          <asp:SqlDataSource ID="SqlDataSourceAvailable" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               SelectCommand="SELECT * FROM [Available]" OnSelecting="SqlDataSourceAvailable_Selecting" >
          </asp:SqlDataSource>
 


          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceAvailable" DataKeyNames="Date" ForeColor="Black" GridLines="Vertical">
               <AlternatingRowStyle BackColor="#CCCCCC" />
               <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                    <asp:BoundField DataField="Upper1730" HeaderText="Upper1730" SortExpression="Upper1730" />
                    <asp:BoundField DataField="Upper1830" HeaderText="Upper1830" SortExpression="Upper1830" />
                    <asp:BoundField DataField="Upper1930" HeaderText="Upper1930" SortExpression="Upper1930" />
                    <asp:BoundField DataField="Lower1730" HeaderText="Lower1730" SortExpression="Lower1730" />
                    <asp:BoundField DataField="Lower1830" HeaderText="Lower1830" SortExpression="Lower1830" />
                    <asp:BoundField DataField="Lower1930" HeaderText="Lower1930" SortExpression="Lower1930" />
                    <asp:BoundField DataField="Balcony1730" HeaderText="Balcony1730" SortExpression="Balcony1730" />
                    <asp:BoundField DataField="Balcony1830" HeaderText="Balcony1830" SortExpression="Balcony1830" />
                    <asp:BoundField DataField="Balcony1930" HeaderText="Balcony1930" SortExpression="Balcony1930" />
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
          </asp:GridView>
     </asp:Content>

