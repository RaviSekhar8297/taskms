﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskManagementSystem.Admin
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addmanager_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddManager.aspx");
        }
    }
}