using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewReservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonNewRes_Click(object sender, EventArgs e)
    {
         Response.Redirect("Reservation.aspx");
    }
    protected void ButtonBack_Click(object sender, EventArgs e)
    {
         Response.Redirect("Login.aspx");
    }
    protected void ButtonView_Click(object sender, EventArgs e)
    {
         Response.Redirect("ManagerRes.aspx");
    }
}