using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirBus
{
    public partial class TicketGenaration : System.Web.UI.Page
    {

        static string strconWFMS = ConfigurationManager.ConnectionStrings["connWorkflowManagementSystem"].ConnectionString;
        static SqlConnection con = new SqlConnection(strconWFMS);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                name.InnerHtml = Request.QueryString["userName"];
                
                age.InnerHtml = Request.QueryString["dob"];
                from.InnerHtml = Request.QueryString["from"];
                to.InnerHtml = Request.QueryString["to"];
                name.InnerHtml = Request.QueryString["to"];
                userName.InnerHtml = Request.QueryString["userName"];
                Time.InnerHtml = Request.QueryString["time"];
                bookingDate.InnerHtml = Request.QueryString["date"];
                airline.InnerHtml = Request.QueryString["airline"];
                
                
            }
        }
    }
}
