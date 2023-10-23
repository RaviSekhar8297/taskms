using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManagementSystem.Admin
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           SuperAdminCount();
            ManagerCount();
            TeamLeaderCount();
        }
        public void SuperAdminCount()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) as totalcount FROM Employee", con);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label1.Text = reader["totalcount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }
        public void ManagerCount()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) as totalcount FROM Employee", con);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label2.Text = reader["totalcount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }
        public void TeamLeaderCount()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) as totalcount FROM AddTeam", con);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label3.Text = reader["totalcount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }
    }
}