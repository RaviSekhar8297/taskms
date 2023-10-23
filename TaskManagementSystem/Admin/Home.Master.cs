using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TaskManagementSystem.Admin
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Load_Username();
            }
        }
        private void Load_Username()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select UserName from TasklogIn2 where UserName=@UserName", con);
            cmd.Parameters.AddWithValue("@UserName", Session["Username"].ToString());
            string UserName = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            lblname.Text = "Welcome " + UserName;
          
        }
    }
}