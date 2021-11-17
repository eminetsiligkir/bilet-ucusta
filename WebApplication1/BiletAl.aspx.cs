using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace bilet_ucusta
{
    public class Bilet
    {
        public int biletID { get; set; }
        public string uyeTc { get; set; }
        public string nereden { get; set; }
        public string nereye { get; set; }
        public string sirket { get; set; }
        public double fiyat { get; set; }
        public string tarih { get; set; }
        public string saat { get; set; }
        public string pnr { get; set; }
        public string soyad { get; set; }
        public string ad { get; set; }


        public Bilet(string uyeTc, string nereden, string nereye, string sirket, double fiyat, string tarih, string saat, string pnr, string soyad, string ad, int biletID = 0)
        {
            this.biletID = biletID;
            this.uyeTc = uyeTc;
            this.nereden = nereden;
            this.nereye = nereye;
            this.sirket = sirket;
            this.fiyat = fiyat;
            this.tarih = tarih;
            this.saat = saat;
            this.pnr = pnr;
            this.soyad = soyad;
            this.ad = ad;

        }
        ~Bilet()
        {
            //Yikici
        }
    }
    public class Uye
    {
        public string ad { get; set; }
        public string soyad { get; set; }
        public string tc { get; set; }
        public string cinsiyet { get; set; }
        public string tel { get; set; }
        public string email { get; set; }
        public int kisiID { get; set; }


        public Uye(string ad, string soyad, string tc, string cinsiyet, string tel, string email, int kisiID = 0)
        {
            this.kisiID = kisiID;
            this.ad = ad;
            this.soyad = soyad;
            this.tc = tc;
            this.cinsiyet = cinsiyet;
            this.tel = tel;
            this.email = email;

        }
        ~Uye()
        {
            //Yikici
        }
    }
    public class Kart
    {
        public int kardID { get; set; } //degisken tanımlamalamaları hem okunabilir hemde yazılabilir oldugu icin get set yapiyor
        public string kartNo { get; set; }
        public string SKTarih { get; set; }
        public string cvv { get; set; }
        public string uyeTc { get; set; }



        public Kart(string kartNo, string uyeTc, string SKTarih, string cvv, int kardID = 0)
        {
            this.kardID = kardID;
            this.uyeTc = uyeTc;
            this.kartNo = kartNo;
            this.SKTarih = SKTarih;
            this.cvv = cvv;
        }
        ~Kart()
        {
            //Yikici
        }

    }


    public partial class _Default : Page
    {
        public Kisi kisi;
        public Kart kart;
        public Bilet bilet;
        public Veritabani veritabani;

        void Pnr_Kodu()
        {

            String karakterler = "0123456789ABCDEFGHIJKLMNOPRSTUVYZ";
            Random random = new Random();
            String PNR = "";
            for (int i = 0; i < 8; i++)
            {
                PNR += karakterler[random.Next(karakterler.Length)];
                Label1.Text = PNR;
            }

        }
        void temizle()
        {
            tbAd.Text = "";
            tbSoyad.Text = "";
            tbTc.Text = "";
            tbTel.Text = "";
            tbSKTarih.Text = "";
            tbEmail.Text = "";
            tbKartNo.Text = "";
            tbCvv.Text = "";
            tbiptalSoyad.Text = "";
            lFiyat.Text = "";

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            veritabani = new Veritabani("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            lFiyat.Text = veritabani.fiyatGetir(ddNereden.Text, ddNereye.Text, ddSirket.Text);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            veritabani = new Veritabani("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");

            bool uyeVarmi = veritabani.uyeVarMi(tbTc.Text);

            if (!uyeVarmi)
            {
                Uye Uye = new Uye(tbAd.Text, tbSoyad.Text, tbTc.Text, ddCinsiyet.Text, tbTel.Text, tbEmail.Text);
                veritabani.kisiEkle(Uye);
            }

            kart = new Kart(tbKartNo.Text, tbTc.Text, tbSKTarih.Text, tbCvv.Text);
            veritabani.kartEkle(kart);
            Pnr_Kodu();

            bilet = new Bilet(tbTc.Text, ddNereden.SelectedValue, ddNereye.SelectedValue, ddSirket.SelectedValue, Convert.ToDouble(lFiyat.Text), tarih.Value.Split(' ')[0], tarih.Value.Split(' ')[1], Label1.Text, tbSoyad.Text,tbAd.Text);
            veritabani.biletEkle(bilet);

            Response.Write("<script language=javascript>alert('Biletiniz Başarıyla alınmıştır.');</script>");
            temizle();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            veritabani = new Veritabani("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            veritabani.biletSil(tbiptalSoyad.Text, tbPnr.Text);

            Response.Write("<script language=javascript>alert('Biletiniz Başarıyla iptal edilmiştir .');</script>");
            temizle();

        }
    }
}