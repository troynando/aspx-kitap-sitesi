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

    public partial class kitapekle : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-BD33OBC; Initial Catalog=kullanicilar; Integrated Security=True; Persist Security Info=False");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Label1.Visible)
                Label1.Visible = false;

            else
                Label1.Visible = true;
        }


        string resim_yolu;
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)//Kullanıcı fileupload ile bir dosya seçmiş ise işlemleri gerçekleştir.
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg") //Sadece jpeg dosyalarını yüklenmesine izin veriyoruz.
                {
                    if (FileUpload1.PostedFile.ContentLength < 1024000) //Maksimum 1MB'lık dosyaların yüklenmesine izin veriyoruz.
                    {
                        string isim = Guid.NewGuid().ToString();
                        //Benzersiz bir isim oluşturduk.İsimlendirme için farklı yöntemlerde kullanabilirsiniz.
                        FileUpload1.SaveAs(Server.MapPath("~/upload/") + isim + ".jpeg");
                        //Sunucuda ki resimler klasörünün içerisine seçilen resmi oluşturduğumuz benzersiz isim ile kaydediyoruz.
                        Label1.Text = "Dosya yüklendi.";
                        resim_yolu = "~/upload/" + isim + ".jpeg";
                    }
                    else
                        Label1.Text = "Dosya boyutu maximum 1MB olmalıdır.";
                }
                else
                    Label1.Text = "Sadece jpeg uzantılı dosyalar yüklenebilir.";
                    
            }


            connection.Open();
                SqlCommand cmd = connection.CreateCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT INTO kitap_kayit (kitap_adi,kitap_aciklama,ekleme_tarihi,yayin_yili,yazari,kategori,kitap_resim,isbn_no) values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.ToString("dd.MM.yyyy") +"','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem + "','" + FileUpload1.FileName + "','" + TextBox7.Text + "')";
            
            cmd.ExecuteNonQuery();
                connection.Close();

            }
        }
    }
