using AirBus.App_Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web.Services;
using System.Web.UI;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
namespace AirBus
{
    public partial class BookTicket : System.Web.UI.Page
    {
        static string strconWFMS = ConfigurationManager.ConnectionStrings["connWorkflowManagementSystem"].ConnectionString;
        static SqlConnection con = new SqlConnection(strconWFMS);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static Plane[] getAirportNames(string from , string to)
        {
           
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select name, t2.loc_Name from tbl_airports t1 INNER JOIN tbl_Location t2 ON t1.loc_id = t2.Id where loc_name IN('"+from.Trim()+"', '"+to.Trim()+"') ", con);
                cmd.Parameters.AddWithValue("@to", to);
                cmd.Parameters.AddWithValue("@from", from);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Plane> req = new List<Plane>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Plane rq = new Plane();
                        rq.AirlineName = dt.Rows[i]["name"].ToString();
                        rq.LocationName = dt.Rows[i]["Loc_Name"].ToString();
                        
                        req.Add(rq);
                    }
                }

               
                con.Close();

                return req.ToArray();

            }
            catch (Exception ex)
            {
                throw ex; //TODO: Please log it or remove the catch
            }
            finally
            {
                con.Close();
            }
        }


        public void SendMail()

        {
            System.Text.StringBuilder mailBody = new System.Text.StringBuilder();

            string str = "<div style =\"padding: 10px;background-color: #d9edf7;border: 10px solid #d9edf7;font-family: &quot; helvetica neue&quot; , helvetica, arial, sans-serif;font-weight: bold;color: #2C3454;box-shadow: 8px 10px 20px 0 rgba(46,61,73,0.15);\">";
            str += "Travel With Us <div style = \"float:right;line-height:1px;color:rgba(0,0,0,.5);font-weight:normal\">";


            str += "<p> Booking Id:<span style = \"font-weight:bold\"> #10000065 </span></p>";
            str += "<p> Date Of Booking : Jan 23, 2017 </p> </div>";
            str += "<div style = \"margin-top: 30px; font-size: 14px!important; line-height: 24px; color: #46535e; padding: 0 20px 30px; font-family: &quot; helvetica neue&quot; , helvetica, arial, sans-serif; background-color: #fff; font-weight: normal; padding-top: 10px; border-radius: 5px\">";
            str += "<p> Hi Saurabh Vijay, </p>";



            str += "<p>";
            str += "Thank you for booking ticket <span style = \"color: #8BC34A; font-weight: bold\"> #100008 </span> .Please find the following travel Details.";


            str += "</p>";



            str += "<div style = \"margin: 10px; font-family: sans-serif; background-color: #F0F0F0; text-align: center\"> Travel Details </div >";



            str += "<p> Indigo | 22nd - Nov - 2016 </ p>";


            str += "<p> <span style = \"width:10px;border-radius:20px;height:10px;background-color:#66bb6a;display:inline-block\">";

            str += "</span> <span id = 'idtravelLocations' class='idtravelLocations' style=\"font-weight:bold\">";
            str += "Bengaluru   &rarr;   Jaipur    |  18:00";

            str += "</span></p>";

            str += "";

            str += "<div style = \"border-right:1px solid rgba(0,0,0,0.2);width:50%;float:left\">";
            str += "<h5 style=\"font-weight:bold\">Passenger Details</h5>";


            str += "<p> Ambareesh Marimekala    | Age : 23  </p>";
            str += "</div>"; 
        str += "<div style = \"float:right;width:40%\">";


            str += "<h5 style= \"font-weight:bold\" > Fair Details</h5>";
            str += " $ 1200";
            str += " </div>";


            str += "<div style = 'margin-top:5%;display:inline-block'>";


            str += " <h5 style= 'font-weight:bold' > Important Information</h5>";
            str += " <p>";
          str += "   <span style = 'width:10px;border-radius:20px;height:10px;background-color:#7AD5C9;display:inline-block' class='iconclass'>";

            str += " </span>  <span style = 'font-weight:bold' > Check­in information</span>: Check­in desks open two hours ahead of the flight'sscheduled departure, and close promptly 1 hour before the flight is scheduled to leave.If you're late, you will forfeit your seat and no refund will be offered.";
            str += "  </p>";
            str += "   <p>";
            str += "  <span style = 'width:10px;border-radius:20px;height:10px;background-color:#F06292;display:inline-block' class='iconclass'>";

            str += "  </span>   <span style = 'font-weight:bold' > Seating:</span> This Airline does not allocate seats, and you can choose where to sitwhen you board the aircraft.The aircraft is boarded in priority order, however,so the earlier you check in, the more choice you will have!";

            str += "  </p>";
            str += "  <p>";
            str += "   <span style = 'width:10px;border-radius:20px;height:10px;background-color:#FE7545;display:inline-block' class='iconclass'>";

            str += "  </span>   <span style = 'font-weight:bold' > Specific needs and access requirements:</span> Please inform us of any specific ";
            str += "    needs or access requirements by calling the contact centre.";

            str += "   </p>";
            str += "  </div>";



            str += " </div>";
            str += "  <div style = 'margin-top:2%;font-weight:normal;border-left:5px solid #384B6A;padding-left:2%'>";
            str += "       <p> If you are facing any problem.please free to contact the following details: </p>";
            str += "     <p>Phone : (123) 456-7890</p>";
            str += "     <p> name @example.com</p> ";

        str+= "</div>";


            str += "</div>";

            mailBody.Append(str);
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("ambareesh.marimekala@rockwellcollins.com");
            mail.To.Add("ambareesh.marimekala@rockwellcollins.com"); //"saurabh.vijay@rockwellcollins.com"

            mail.Subject = "Ticket Booked , #10000078";


            



            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    
                    StringReader sr = new StringReader(mailBody.ToString());

                    Document pdfDoc = new Document(PageSize.A3, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        byte[] bytes = memoryStream.ToArray();
                        memoryStream.Close();

                       
                        mail.Attachments.Add(new Attachment(new MemoryStream(bytes), "Ticket.pdf"));
                      
                    }
                }
            }

            string body = str.Trim();
            mail.Body = body;

            mail.IsBodyHtml = true;

            SmtpClient client = new SmtpClient("smtpimr.rockwellcollins.com");
            client.Credentials = CredentialCache.DefaultNetworkCredentials;
            client.Send(mail);
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            SendMail();
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            SendMail();
        }

        
        protected void btnSubmitDetails_Click(object sender, EventArgs e)
        {

            string userName = txtFirstName.Text + " " + txtMiddleName.Text + "" + txtLastName.Text;
            string email = txtEmail.Text;
            string phoneNo = txtPhone.Text;
            string dob = txtDOB.Text;

            string from = hfFrom.Value;
            string to = hfTo.Value;
            string time = hfTime.Value;
            string date = hfDate.Value;
            string airline = hfAirline.Value;


            Response.Redirect("TicketGenaration.aspx?userName=" + userName + "&email=" + email + "&phoneNo=" + phoneNo + "&dob=" + dob + "&from=" + from + "&to=" + to + "&time=" + time + "&airline=" + airline);






            //System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //sb.Append(@"<script>");
            //sb.Append(@"popGenarateTicket();");
            //sb.Append(@"</script>");

            //System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "onSuccess", sb.ToString(), false);
        }

        protected void btnDontGotoHotel_Click1(object sender, EventArgs e)
        {
            string userName = txtFirstName.Text + " " + txtMiddleName.Text + "" + txtLastName.Text;
            string email = txtEmail.Text;
            string phoneNo = txtPhone.Text;
            string dob = txtDOB.Text;

            string from = hfFrom.Value;
            string to = hfTo.Value;
            string time = hfTime.Value;
            string date = hfDate.Value;
            string airline = hfAirline.Value;


            Response.Redirect("TicketGenaration.aspx?userName=" + userName + "&email=" + email + "&phoneNo=" + phoneNo + "&dob=" + dob + "&from=" + from + "&to=" + to + "&time=" + time + "&airline=" + airline);
        }

        
    }
}