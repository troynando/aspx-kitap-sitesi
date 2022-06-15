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



namespace _2014113026
{
    public partial class detaylar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["kitapid"];
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["kullanicilarConnectionString"].ConnectionString);
            string sorgu = "select * from kitap_kayit where id=@ID";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@ID", ID);
            cnn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                imgProfil.ImageUrl = "/upload/" +  dr ["kitap_resim"];
                lblkitap_adi.Text = dr["kitap_adi"].ToString();
                lblkitap_aciklama.Text = dr["kitap_aciklama"].ToString();
                lblekleme_tarihi.Text = dr["ekleme_tarihi"].ToString();
                lblyayin_yili.Text = dr["yayin_yili"].ToString();
                lblyazari.Text = dr["yazari"].ToString();
                lblkategori.Text = dr["kategori"].ToString();
                lblisbn_no.Text = dr["isbn_no"].ToString();
                dr.Close();
            }
            cnn.Close();
        }

       
    }
}