using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
 

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownListCountry_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
         conn.Open();

         string SQL = "select ID from [User] where UserName=@UserName";
         SqlCommand comUser = new SqlCommand(SQL, conn);
         comUser.Parameters.AddWithValue("@UserName", TextBoxUser.Text);

         SqlDataReader data = comUser.ExecuteReader();
         if (data.HasRows) // username match
         {
              conn.Close();
              Response.Write("user already exists");
         }
         else
         {
              conn.Close();
              try
              {
                   Guid newGUID = Guid.NewGuid();

                   //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); 
                   conn.Open();
                   string insertQuery = "insert into [User] (ID, UserName, Email, Password, Country) values (@ID , @Uname, @email, @password, @country)";
                   SqlCommand com = new SqlCommand(insertQuery, conn);

                   com.Parameters.AddWithValue("@ID", newGUID.ToString());
                   com.Parameters.AddWithValue("@Uname", TextBoxUser.Text);
                   com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                   com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                   com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

                   com.ExecuteNonQuery();
                   Response.Redirect("Login.aspx");
                   //Response.Write("Your Registration is successful");
                   

                   conn.Close();
              }
              catch (Exception ex)
              {
                   Response.Write("Error:" + ex.ToString());
              }
         }

    }
}