using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Sql;

namespace _2014113026
{
    public partial class admin : System.Web.UI.Page
    {
        DataView dv = new DataView();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            dt = dv.ToTable();
            if (dt.Rows.Count != 0)
            {
                Session["admin"] = "admin";
                Response.Redirect("yonetim.aspx");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
               

            }
        }
    }
}