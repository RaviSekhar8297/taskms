using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManagementSystem.TeamLeader
{
    public partial class DashBoard3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            EmpCount();
            TeamCount();
            
        }
        public void EmpCount()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) as EmpCount FROM Employee", con);
            using(SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label2.Text = reader["EmpCount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }   
        public void TeamCount()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) as TeamCount from AddTeam", con);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label1.Text = reader["TeamCount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }
    }
}








