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
     protected void UpdateDB()
     {
          try
          {
               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
               conn.Open();
               string insertQuery = "insert into [Reservation] (NoOfPeople, Date, Time, TableView) values (@NoOfPeople, @Date, @Time, @TableView)";
               SqlCommand com = new SqlCommand(insertQuery, conn);

               com.Parameters.AddWithValue("@NoOfPeople", TextBoxPeople.Text);
               com.Parameters.AddWithValue("@Date", TextBoxDate.Text);
               com.Parameters.AddWithValue("@Time", DropDownListTime.SelectedItem.ToString());
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

    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
         int People = Convert.ToInt32(TextBoxPeople.Text);
         string Date = TextBoxDate.Text;
         string Time = DropDownListTime.SelectedItem.ToString();
         string View = DropDownListView.SelectedItem.ToString();
         string Sorry = "Sorry. The available seats are: ";

          //checking valid date
          SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
          conn2.Open();
          string SQL = "select Date from [Available] where Date=@Date";
          SqlCommand com2 = new SqlCommand(SQL, conn2);
          com2.Parameters.AddWithValue("@Date", Date);
          SqlDataReader data = com2.ExecuteReader();

          if (data.Read()) // if match, valid date
          {
               conn2.Close();
               //checking for available seats
               //Upper1730
               if (Time == "17:30" && View == "Upper")
               {
                    conn2.Open();
                    SQL = "select Upper1730 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Upper1730=@Upper1730 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Upper1730", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }                   
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Upper1730

               //Upper1830
               if (Time == "18:30" && View == "Upper")
               {
                    conn2.Open();
                    SQL = "select Upper1830 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Upper1830=@Upper1830 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Upper1830", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Upper1830


               //Upper1930
               if (Time == "19:30" && View == "Upper")
               {
                    conn2.Open();
                    SQL = "select Upper1930 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Upper1930=@Upper1930 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Upper1930", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Upper1930

               //Lower1730
               if (Time == "17:30" && View == "Lower")
               {
                    conn2.Open();
                    SQL = "select Lower1730 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Lower1730=@Lower1730 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Lower1730", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Lower1730

               //Lower1830
               if (Time == "18:30" && View == "Lower")
               {
                    conn2.Open();
                    SQL = "select Lower1830 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Lower1830=@Lower1830 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Lower1830", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Lower1830


               //Lower1930
               if (Time == "19:30" && View == "Lower")
               {
                    conn2.Open();
                    SQL = "select Lower1930 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Lower1930=@Lower1930 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Lower1930", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Lower1930

               //Balcony1730
               if (Time == "17:30" && View == "Balcony")
               {
                    conn2.Open();
                    SQL = "select Balcony1730 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Balcony1730=@Balcony1730 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Balcony1730", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Balcony1730

               //Balcony1830
               if (Time == "18:30" && View == "Balcony")
               {
                    conn2.Open();
                    SQL = "select Balcony1830 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Balcony1830=@Balcony1830 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Balcony1830", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Balcony1830


               //Balcony1930
               if (Time == "19:30" && View == "Balcony")
               {
                    conn2.Open();
                    SQL = "select Balcony1930 from [Available] where Date=@Date";
                    com2 = new SqlCommand(SQL, conn2);
                    com2.Parameters.AddWithValue("@Date", Date);
                    data = com2.ExecuteReader();
                    if (data.Read())
                    {
                         int Available = data.GetInt32(0);
                         if (Available < People)
                         {
                              conn2.Close();
                              string myAvailable = Available.ToString();
                              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + Sorry + myAvailable + "');", true);
                         }
                         else
                         {
                              conn2.Close();

                              Available -= People;
                              conn2.Open();
                              SQL = "Update [Available] SET Balcony1930=@Balcony1930 WHERE Date=@Date";
                              com2 = new SqlCommand(SQL, conn2);
                              com2.Parameters.AddWithValue("@Date", Date);
                              com2.Parameters.AddWithValue("@Balcony1930", Available);
                              com2.ExecuteNonQuery();
                              conn2.Close();
                              UpdateDB();
                         }
                    }
                    else //invalid
                    {
                         conn2.Close();
                         string myStringVariable = "Error1.";
                         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                    }
               }    // end of Upper1930

          }
          else //invalid input date
          {
               conn2.Close();
               // display error here
               string myStringVariable = "Your selected date is not available. Our available date is from 12/25/2015 to 01/10/2016.";
               ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
          }
         




    }

    protected void ButtonBack_Click(object sender, EventArgs e)
    {
         Response.Redirect("NewReservation.aspx");
    }
}