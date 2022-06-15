using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;


namespace _2014113026
{
    public partial class yonetim : System.Web.UI.Page
  {
        string cs = ConfigurationManager.ConnectionStrings["kullanicilarConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-BD33OBC; Initial Catalog=kullanicilar; Integrated Security=True; Persist Security Info=False");

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from kitap_kayit", con);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable(); dt.Load(dr);
           
           



            con.Close();

           
        }

       
    }

}
    


       

    
