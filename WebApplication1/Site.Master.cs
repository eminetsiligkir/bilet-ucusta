using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_ucusta
{
    public partial class SiteMaster : MasterPage
    {
        //Giriş butonuna tıklandı.
        protected void Giris_Click(object sender, EventArgs e)
        {

            //Üye var mı yok mu kontrol ediliyor.
            Veritabani kontrolEt = new Veritabani();
            bool varMi = kontrolEt.kisiKontrol(email.Text, sifre.Text);
            if (varMi == true)
            {

                Response.Redirect("UyeGirisYonlendirme.aspx?email=" + email.Text + "&sifre=" + sifre.Text);
            }
            else
            {
                Response.Redirect("UyeGirisYonlendirmeHata.aspx");
            }


        }
    }
}