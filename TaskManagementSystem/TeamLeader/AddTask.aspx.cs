using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace TaskManagementSystem.TeamLeader
{
    public partial class AddTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtstartdate.Text = DateTime.Now.ToString("yyyy/MM/dd");
            //txtstartdate.Text = DateTime.Now.ToString();
            txtstatus.Text = "Not Started";
            txtremarks.Text = "No";
            txtpersent.Text = "0";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TaskList(Empid,EmpName,TaskName,Startdate,Exptdate,TotalDays, Status,Remarks,Percentage) values(@Empid,@EmpName,@TaskName,@Startdate,@Exptdate,@TotalDays, @Status,@Remarks,@Percentage)", con);
            cmd.Parameters.AddWithValue("@Empid", txtempid.Text);
            cmd.Parameters.AddWithValue("@EmpName", ddlempname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@TaskName", txttask.Text);
            cmd.Parameters.AddWithValue("@Startdate", txtstartdate.Text);
            cmd.Parameters.AddWithValue("@Exptdate", txtexdate.Text);
            cmd.Parameters.AddWithValue("@TotalDays", txtdays.Text);
            cmd.Parameters.AddWithValue("@Status", txtstatus.Text);
            cmd.Parameters.AddWithValue("@Remarks", txtremarks.Text);
            cmd.Parameters.AddWithValue("@Percentage", txtpersent.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Inserted....')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed....')</script>");
            }

        }

        protected void txtexdate_TextChanged(object sender, EventArgs e)
        {
            try
            {
                txtdays.Text = null;
                if (txtstartdate.Text != "" && txtexdate.Text != "")
                {
                    //Storing input Dates  
                    DateTime Fromdate = Convert.ToDateTime(txtstartdate.Text);
                    DateTime Todate = Convert.ToDateTime(txtexdate.Text);

                    //Creating object of TimeSpan Class  
                    TimeSpan objTimeSpan = Todate - Fromdate;
                    //years  
                    int Years = Todate.Year - Fromdate.Year;
                    //months  
                    int month = Todate.Month - Fromdate.Month;
                    //TotalDays  
                    double Days = Convert.ToDouble(objTimeSpan.TotalDays);
                    //Total Months  
                    int TotalMonths = (Years * 12) + month;
                    //Total Hours  
                    double TotalHours = objTimeSpan.TotalHours;
                    //Total Minutes  
                    double TotalMinutes = objTimeSpan.TotalMinutes;
                    //Total Seconds  
                    double TotalSeconds = objTimeSpan.TotalSeconds;
                    //Total Mile Seconds  
                    double TotalMileSeconds = objTimeSpan.TotalMilliseconds;
                    //Assining values to td tags                
                    txtdays.Text = Convert.ToString(Days);
                }

                SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from TaskList where TotalDays='"+txtdays.Text+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);             
               
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        protected void ddlempname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=TaskManagement;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Employee where Name=@Name", con);
            cmd.Parameters.AddWithValue("@Name", ddlempname.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }      
    }
}