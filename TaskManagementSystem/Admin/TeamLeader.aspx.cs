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
    public partial class TeamLeader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showemployees_Click(object sender, EventArgs e)
        {          
            Response.Redirect("AddTeam.aspx");
        }
    }
}