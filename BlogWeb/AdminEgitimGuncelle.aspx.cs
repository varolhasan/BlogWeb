using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtbxID.Enabled = false;
            TxtbxID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
                TxtbxBaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].BASLIK;
                TxtbxAltbaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
                TxtbxAciklama.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
                TxtbxGnot.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].GNOT;
                TxtbxTarih.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].TARIH;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            dt.EgitimGuncelle(TxtbxBaslik.Text, TxtbxAltbaslik.Text, TxtbxAciklama.Text, TxtbxGnot.Text, 
                TxtbxTarih.Text, Convert.ToInt16(TxtbxID.Text));
            Response.Redirect("AdminEgitim.aspx");
        }
    }
}