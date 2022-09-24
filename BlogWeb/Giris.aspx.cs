using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWeb
{
    public partial class Giris : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source = DESKTOP-RP5F7ET; Initial Catalog = DbWebBlog; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("select * from TBLADMIN where KULLANICI=@p1 and SIFRE=@p2", baglanti);
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader dr1 = komut1.ExecuteReader();
            if (dr1.Read())
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı Adı veya Şifre");
            }
            baglanti.Close();
        }
    }
}