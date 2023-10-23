using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TaskManagementSystem
{
    public partial class LogInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from TasklogIn2", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int rowcount = dt.Rows.Count;
            for(int i = 0; i < rowcount; i++)
            {
                string username = dt.Rows[i]["UserName"].ToString();
                string password = dt.Rows[i]["PassWord"].ToString();
                if (username == txtuserId.Text && password == txtPass2.Text)
                {
                    Session["UserName"] = username;
                    if(dt.Rows[i]["Role"].ToString()== "Admin")
                    {
                        Response.Redirect("Admin/Admin.aspx");
                    }
                    else if(dt.Rows[i]["Role"].ToString()== "Super Admin")
                    {
                        Response.Redirect("SuperAdmin/SuperAdmin1.aspx");
                    }
                    else if(dt.Rows[i]["Role"].ToString()== "Manager")
                    {
                        Response.Redirect("Manager/Manager2.aspx");
                    }
                    else if(dt.Rows[i]["Role"].ToString()== "Team Leader")
                    {
                        Response.Redirect("TeamLeader/TeamLeader3.aspx");
                    }
                    else
                    {
                        Response.Redirect("Employe/Employee4.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Failed....')</script>");
                }
            }
        }
    }
}