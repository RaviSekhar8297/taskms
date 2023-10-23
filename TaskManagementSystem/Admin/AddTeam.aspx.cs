using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TaskManagementSystem.Admin
{
    public partial class AddTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtcreateddate.Text= DateTime.Now.ToString();
            if (Session["Username"] != null)
            {
                Addedby();
            }
        }
        public void Addedby()
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select UserName from TasklogIn2 where UserName=@UserName", con);
            cmd.Parameters.AddWithValue("@UserName", Session["Username"].ToString());
            string AddedBy = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            txtcreatedby.Text = AddedBy;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into AddTeam values('"+txtteamid.Text+"','"+txtteamname.Text+"','"+txtcreateddate.Text+"','"+txtcreatedby.Text+"')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Team Added Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed')</script>");
            }
        }
    }
}