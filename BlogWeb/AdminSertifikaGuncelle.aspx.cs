using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSertifikaGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxbxID.Enabled = false;
            TxbxID.Text = x.ToString();

            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();

            if (Page.IsPostBack == false)
            {
                TxtbxSertifika.Text = dt.SertifikaGetir(Convert.ToInt16(x))[0].SERTIFIKA;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            dt.SertifikaGuncelle(TxtbxSertifika.Text, Convert.ToInt16(TxbxID.Text));
            Response.Redirect("AdminSertifika.aspx");
        }
    }
}