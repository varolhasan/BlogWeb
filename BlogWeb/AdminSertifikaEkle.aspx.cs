using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSertifikaEkle : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            dt.SertifikaEkle(TxtbxSertifika.Text);
            Response.Redirect("AdminSertifika.aspx");
        }
    }
}