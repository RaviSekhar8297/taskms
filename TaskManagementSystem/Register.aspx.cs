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
    public partial class Register : System.Web.UI.Page
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
            txtcreatedby.Text = AddedBy;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Role = "";
            if (rdbadmin.Checked == true)
            {
                Role = rdbadmin.Text;
            }
            else if (rdbsuperadmin.Checked == true)
            {
                Role = rdbsuperadmin.Text;
            }
            else if (rdbmanager.Checked == true)
            {
                Role = rdbmanager.Text;
            }
            else if (rdbteamleder.Checked == true)
            {
                Role = rdbteamleder.Text;
            }
            else
            {
                Role = rdbemployee.Text;
            }
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();          
            SqlCommand cmd = new SqlCommand("insert into Register(EmpId,FirstName,LastName,RoleId,DeptId ,UserName,PassWord,Mobile ,EmailId,DOJ ,DOB,CreatedBy,CreatedDate ,ModifiedBy,ModifiedDate)values(@EmpId,@FirstName,@LastName,@RoleId,@DeptId ,@UserName,@PassWord,@Mobile ,@EmailId,@DOJ ,@DOB,@CreatedBy,@CreatedDate ,@ModifiedBy,@ModifiedDate)", con);
            cmd.Parameters.AddWithValue("@EmpId", txtempid.Text);
            cmd.Parameters.AddWithValue("@FirstName", txtfname.Text);
            cmd.Parameters.AddWithValue("@LastName", txtlname.Text);
            cmd.Parameters.AddWithValue("@RoleId", Role);
            cmd.Parameters.AddWithValue("@DeptId", ddldeptid.SelectedValue);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@PassWord", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
            cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);
            cmd.Parameters.AddWithValue("@DOJ", txtdoj.Text);
            cmd.Parameters.AddWithValue("@DOB", txtusername.Text);
            cmd.Parameters.AddWithValue("@CreatedBy", txtcreatedby.Text);
            cmd.Parameters.AddWithValue("@CreatedDate", txtcreateddate.Text);
            cmd.Parameters.AddWithValue("@ModifiedBy",txtmodifiedby.Text);
            cmd.Parameters.AddWithValue("@ModifiedDate", txtmodifieddate.Text);
            int i= cmd.ExecuteNonQuery();
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

       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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