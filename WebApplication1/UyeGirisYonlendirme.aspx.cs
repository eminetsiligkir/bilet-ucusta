using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_ucusta
{
    public partial class UyeGirisYonlendirme : System.Web.UI.Page
    {
        //Sayfa yüklendiğinde
        protected void Page_Load(object sender, EventArgs e)
        {
            Veritabani getir = new Veritabani();
            List<string> bilgiler = new List<string>();
            //Liste olarak bilgiler çekiliyor.
            bilgiler = getir.kisiGetir(Request.QueryString["email"], Request.QueryString["sifre"]);
            //Sayfada nesneler dolduruluyor.
            ad.Text = bilgiler[0];
            soyad.Text = bilgiler[1];
            nereden.Text = bilgiler[2];
            nereye.Text = bilgiler[3];
            sirket.Text = bilgiler[4];
            fiyat.Text = bilgiler[5];
            tarih.Text = bilgiler[6];
            saat.Text = bilgiler[7];
            tc.Text = bilgiler[8];
        }
    }
}