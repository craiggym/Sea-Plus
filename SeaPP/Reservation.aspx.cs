using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Resevation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         try
         {
              SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
              conn.Open();
              string insertQuery = "insert into [Reservation] (NoOfPeople, Date, TableView) values (@NoOfPeople, @Date, @TableView)";
              SqlCommand com = new SqlCommand(insertQuery, conn);

              com.Parameters.AddWithValue("@NoOfPeople", TextBoxPeople.Text);
              com.Parameters.AddWithValue("@Date", DropDownListDate.SelectedItem.ToString());
              com.Parameters.AddWithValue("@TableView", DropDownListView.SelectedItem.ToString());
              
              com.ExecuteNonQuery();
              Response.Redirect("ManagerRes.aspx");


              conn.Close();
         }
         catch (Exception ex)
         {
              Response.Write("Error:" + ex.ToString());
         }
    }
}