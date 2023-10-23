using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskManagementSystem.TeamLeader
{
    public partial class Register3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            txtaddedby.Text = AddedBy;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TasklogIn2(Id,Name,Eamil,Phone,Address,UserName,PassWord,Re_PassWord,AddedBy,Role)values(@Id,@Name,@Eamil,@Phone,@Address,@UserName,@PassWord,@Re_PassWord,@AddedBy,@Role)", con);
            cmd.Parameters.AddWithValue("@Id", txtid.Text);
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Eamil", txtemail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@Address", ddladdress.SelectedValue);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@PassWord", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Re_PassWord", ddldept.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@AddedBy", txtaddedby.Text);
            cmd.Parameters.AddWithValue("@Role", rblrole.SelectedValue);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
            {
                Response.Write("<script>alert('Inserted....')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed....')</script>");
            }
        }

        protected void ddldept_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AddTeam where TeamName=@TeamName", con);
            cmd.Parameters.AddWithValue("@TeamName", ddldept.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}