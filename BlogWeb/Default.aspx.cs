using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHAKKIMDATableAdapter db = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater1.DataSource = db.HakkimdaListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.TBLDENEYIMTableAdapter db1 = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            Repeater2.DataSource = db1.DeneyimListele();
            Repeater2.DataBind();

            DataSet1TableAdapters.TBLEGITIMTableAdapter db2 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = db2.EgitimListele();
            Repeater3.DataBind();

            DataSet1TableAdapters.TBLHOBILERTableAdapter db3 = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            Repeater4.DataSource = db3.HobilerListele();
            Repeater4.DataBind();

            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter db4 = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            Repeater5.DataSource = db4.SertifikalarListele();
            Repeater5.DataBind();

            DataSet1TableAdapters.TBLYETENEKLERTableAdapter db5 = new DataSet1TableAdapters.TBLYETENEKLERTableAdapter();
            Repeater6.DataSource = db5.YeteneklerListele();
            Repeater6.DataBind();
        }
    }
}