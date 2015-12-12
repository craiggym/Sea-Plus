using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
             
    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
          SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
          //conn.Open();
          //string checkuser = "select count (*) from [User] where UserName='" + TextBoxUser.Text + "'";
          //SqlCommand com = new SqlCommand(checkuser, conn);
          //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
          //conn.Close();

          //    if (temp == 1)
          //    {
          //         conn.Open();
          //         string checkPass = "select Password from [User] where UserName='" + TextBoxPass.Text + "'";
          //         SqlCommand passComm = new SqlCommand(checkPass, conn);
          //         string password = passComm.ExecuteScalar().ToString();
          //         conn.Close();

          //         if (password == TextBoxPass.Text)
          //         {
          //              Session["New"] = TextBoxUser.Text;
          //              Response.Write("Password is correct");
          //         }
          //         else
          //         {
          //              Response.Write("Password is not correct");
          //         }
          //    }
          //    else
          //    {
          //         Response.Write("UserName is not correct");
          //    }


              conn.Open();
              string SQL = "select ID from [User] where UserName=@UserName AND Password=@Password";
              SqlCommand com = new SqlCommand(SQL, conn);
              com.Parameters.AddWithValue("@UserName", TextBoxUser.Text);
              com.Parameters.AddWithValue("@Password", TextBoxPass.Text);
              SqlDataReader data = com.ExecuteReader();
              if (data.HasRows) // username and password match
              {
                   conn.Close();
                   Response.Redirect("NewReservation.aspx");
              }
              else
              {
                   conn.Close();
                   // display error here
                   //Response.Write("The UserName or Password is not corrected");
                   // display message box
                   string myStringVariable = "The UserName or Password is not corrected";
                   ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
              }



    }
}