using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminDeneyimlerimGuncelle : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            dt.DeneyimGuncelle(TxtbxBaslik.Text,TxtbxAltbaslik.Text,TxtbxAciklama.Text,
                TxtbxTarih.Text,Convert.ToByte(TxtbxID.Text));
            Response.Redirect("AdminDeneyimlerim.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            TxtbxID.Enabled = false;
            TxtbxID.Text = x.ToString();
            

            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt1 = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            if (Page.IsPostBack == false)
            {
                TxtbxBaslik.Text = dt1.DeneyimGetir(Convert.ToByte(x))[0].BASLIK;
                TxtbxAltbaslik.Text = dt1.DeneyimGetir(Convert.ToByte(x))[0].ALTBASLIK;
                TxtbxAciklama.Text = dt1.DeneyimGetir(Convert.ToByte(x))[0].ACIKLAMA;
                TxtbxTarih.Text = dt1.DeneyimGetir(Convert.ToByte(x))[0].TARIH;
            }
        }
    }
}