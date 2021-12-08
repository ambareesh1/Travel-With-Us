using AirBus.App_Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirBus
{
    public partial class Index : System.Web.UI.Page
    {
        static string strconWFMS = ConfigurationManager.ConnectionStrings["connWorkflowManagementSystem"].ConnectionString;
        static SqlConnection con = new SqlConnection(strconWFMS);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<string> GetAutoCompleteData(string username)
        {
            List<string> result = new List<string>();


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Loc_Name from tbl_Location where Loc_Name LIKE '%'+@SearchText+'%'", con);
                cmd.Parameters.AddWithValue("@SearchText", username);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(dr["Loc_Name"].ToString());
                }
                return result;

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
        [WebMethod]
        public static List<string> GetAutoCompleteDataTo(string usernameTo)
        {
            List<string> result = new List<string>();


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Loc_Name from tbl_Location where Loc_Name LIKE '%'+@SearchText+'%'", con);
                cmd.Parameters.AddWithValue("@SearchText", usernameTo);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(dr["Loc_Name"].ToString());
                }
                return result;

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

        [WebMethod]
        public static Plane[] GetPlaneDetails(string to, string from)
        {
            List<string> result = new List<string>();


            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Tbl_PlaneDetails where Loc_name = @to AND To_Location = @from ORDER BY Price ASC", con);
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
                        rq.AirlineName = dt.Rows[i]["Airline_Name"].ToString();
                        rq.LocationName = dt.Rows[i]["Loc_Name"].ToString();
                        rq.DepartureTime = dt.Rows[i]["Departure_Time"].ToString();
                        rq.To_location = dt.Rows[i]["To_Location"].ToString();
                        rq.ArrivalTime = dt.Rows[i]["Arrival_Time"].ToString();
                        rq.Duration = dt.Rows[i]["Duration"].ToString();
                        rq.Price = dt.Rows[i]["Price"].ToString();
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


      //Filter data according to filter type.
        [WebMethod]
        public static Plane[] GetFilterData(string filterName, string filterData,string from,string to)
        {
            List<string> result = new List<string>();
            string[] airPlaneName = new string[10];
            StringBuilder name = new StringBuilder();
            try
            {

                con.Open();
                string query = string.Empty;
                SqlCommand cmd;

                if (filterName == "RangeValue")
                {
                    query = "select * from tbl_PlaneDetails where price <= @SearchText AND Loc_name = @from AND To_Location = @to";

                }
                else if (filterName == "TimeRange11")
                {
                    query = "select * from Tbl_PlaneDetails where Departure_time <= @SearchText AND Loc_name = @from AND To_Location = @to";
                }
                else if (filterName == "TimeRangeAfter11")
                {
                    query = "select * from Tbl_PlaneDetails where Departure_time Between '11:00' and '18:00' AND Loc_name = @from AND To_Location = @to";
                }
                else if (filterName == "TimeRangeAfter6")
                {
                    query = "select * from Tbl_PlaneDetails where Departure_time >= @SearchText AND Loc_name = @from AND To_Location = @to";
                }
                else if(filterName== "Airlines")
                {
                    if(filterData.Contains(","))
                    {
                        filterData = "'" + filterData.Replace(",", "','") + "'";
                        filterData =  filterData.Replace('"', ' ').Trim();
                        query = "select * from Tbl_PlaneDetails where Airline_Name IN (" + filterData + ") AND Loc_name = @from AND To_Location = @to";
                    }
                    else
                    { 
                    query = "select * from Tbl_PlaneDetails where Airline_Name IN ('" + filterData + "') AND Loc_name = @from AND To_Location = @to";
                    }
                }
                else

                {
                    query = "select * from tbl_PlaneDetails where  Loc_name = @from AND To_Location = @to";
                }
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@SearchText", filterData);
                cmd.Parameters.AddWithValue("@from", from);
                cmd.Parameters.AddWithValue("@to", to);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Plane> req = new List<Plane>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Plane rq = new Plane();
                        rq.AirlineName = dt.Rows[i]["Airline_Name"].ToString();
                        rq.LocationName = dt.Rows[i]["Loc_Name"].ToString();
                        rq.DepartureTime = dt.Rows[i]["Departure_Time"].ToString();
                        rq.To_location = dt.Rows[i]["To_Location"].ToString();
                        rq.ArrivalTime = dt.Rows[i]["Arrival_Time"].ToString();
                        rq.Duration = dt.Rows[i]["Duration"].ToString();
                        rq.Price = dt.Rows[i]["Price"].ToString();
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
        
        [WebMethod]
        public static Plane[] GetPlaneDetailsforLoc(string from, string to)
        {
            List<string> result = new List<string>();


            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Tbl_PlaneDetails where Loc_name = @from AND To_Location = @to ORDER BY Price ASC", con);
                cmd.Parameters.AddWithValue("@from", from);
                cmd.Parameters.AddWithValue("@to", to);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Plane> req = new List<Plane>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Plane rq = new Plane();
                        rq.AirlineName = dt.Rows[i]["Airline_Name"].ToString();
                        rq.LocationName = dt.Rows[i]["Loc_Name"].ToString();
                        rq.DepartureTime = dt.Rows[i]["Departure_Time"].ToString();
                        rq.To_location = dt.Rows[i]["To_Location"].ToString();
                        rq.ArrivalTime = dt.Rows[i]["Arrival_Time"].ToString();
                        rq.Duration = dt.Rows[i]["Duration"].ToString();
                        rq.Price = dt.Rows[i]["Price"].ToString();
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


        //Method to bind data to the area dropdown
        [WebMethod]
        public static Plane[] BindArea(string area)
        {
            List<string> result = new List<string>();


            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Aname , Area_id from tbl_Area T1 INNER JOIN Tbl_Location T2 ON t1.Loc_Id = t2.Id where t2.loc_Name = @Area", con);
                cmd.Parameters.AddWithValue("@Area", area);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Plane> req = new List<Plane>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Plane rq = new Plane();
                        rq.AirlineName = dt.Rows[i]["Aname"].ToString();
                        rq.LocationName = dt.Rows[i]["Area_id"].ToString();
                       
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

        [WebMethod]
        public static Hotel[] BindHotelDetails(string area)
        {
            List<string> result = new List<string>();


            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT HName, HArea, HType, HUserRating, HPrice from tbl_Hotels T1 INNER JOIN  tbl_location T2 ON T1.HLocationId= T2.id Where t2.loc_Name  = @Area", con);
                cmd.Parameters.AddWithValue("@Area", area);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Hotel> req = new List<Hotel>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Hotel rq = new Hotel();
                        rq.HotelName = dt.Rows[i]["HName"].ToString();
                        rq.HotalLocation = dt.Rows[i]["HArea"].ToString();
                        rq.Type = dt.Rows[i]["HType"].ToString();
                        rq.UserRating = dt.Rows[i]["HUserRating"].ToString();
                        rq.HotelPrice = dt.Rows[i]["HPrice"].ToString();
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

        [WebMethod]
        public static Hotel[] BindAccordingToArea(string area)
        {
            List<string> result = new List<string>();


            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT HName, HArea, HType, HUserRating, HPrice from tbl_Hotels T1 INNER JOIN  tbl_location T2 ON T1.HLocationId= T2.id Where  t1.HArea  = @Area", con);
                cmd.Parameters.AddWithValue("@Area", area);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                List<Hotel> req = new List<Hotel>();
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Hotel rq = new Hotel();
                        rq.HotelName = dt.Rows[i]["HName"].ToString();
                        rq.HotalLocation = dt.Rows[i]["HArea"].ToString();
                        rq.Type = dt.Rows[i]["HType"].ToString();
                        rq.UserRating = dt.Rows[i]["HUserRating"].ToString();
                        rq.HotelPrice = dt.Rows[i]["HPrice"].ToString();
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
    }


}