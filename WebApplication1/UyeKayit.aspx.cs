using System;
using System.Data.SqlClient;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace bilet_ucusta
{
    //Kişi sınıfı
    public class Kisi
    {
        public string Ad { get; set; } 
        public string Soyad { get; set; }
        public string Tc { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public string Sifre { get; set; }
        //Kişi yapıcısı
        public Kisi(string Ad,string Soyad,string Tc,string Email, string Tel,string Sifre)
        {
            this.Ad = Ad;
            this.Soyad = Soyad;
            this.Tc = Tc;
            this.Email = Email;
            this.Tel = Tel;
            this.Sifre = Sifre;
        }
        //Kişi yıkıcısı
        ~Kisi() { }
    }

    public partial class UyeKayit : System.Web.UI.Page
    {
        protected void Kayit_click(object sender, EventArgs e)
        {
            //Kullanıcı bilgileri kişi sınıfına gönderiliyor.
            Kisi k = new Kisi(ad.Text,soyad.Text,tc.Text,email.Text,tel.Text,sifre.Text);
           
            

            Veritabani kontrol = new Veritabani();
            //Kişinin kayıtlı olup olmadığına bakılıyor.
            kontrol.kisiKontrol(tc.Text);

            //Bilgiler veritabanı sınıfına gönderiliyor.
            kontrol.kisi_Ekle(k);

            //If başlangıcı
            if (kontrol.a != 5)
            {
                if (kontrol.KayitOlduMu())
                {
                    Response.Redirect("UyeKayitYonlendirme.aspx");

                }
                else
                {
                    Response.Redirect("UyeKayitYonlendirmeHata.aspx");
                }
            }
            else
            {
                bilgi.Text = "***Siz zaten üyesiniz.***";
            }
            //If bitişi

            //Nesneler temizleniyor.
            Temizle();

        }
        public void Temizle()
        {
            ad.Text = "";
            soyad.Text = "";
            email.Text = "";
            tc.Text = "";
            tel.Text = "";
            sifre.Text = "";
            sifreTekrar.Text = "";
            
        }
        


    }
}

