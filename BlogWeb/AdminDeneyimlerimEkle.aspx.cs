using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminDeneyimlerimEkle : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt1 = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            dt1.DeneyimEkle(TextBox1.Text, TextBox2.Text, TextBox6.Text, TextBox7.Text);
            Response.Redirect("Default.aspx");
        }
    }
}