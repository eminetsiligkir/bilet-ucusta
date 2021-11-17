using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using bilet_ucusta;

namespace bilet_ucusta
{
    //Veritabanı sınıfı
    public class Veritabani
    {
        
        private bool kontrol = true;
        public int a = 0;
        public bool giris_kontrol = true;
        //Veritabanı yapıcısı
        public Veritabani(string v, string v1, string v2, string v3)
        { }


        public Veritabani()
        {
        }

        public Veritabani(string v)
        {
        }

        //Veritabanı yıkıcısı
        ~Veritabani() { }
        //Kişinin kayıt için kontrolü yapılıyor.
        public void kisiKontrol(string tc)
        {
           
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("SELECT * FROM uyeler", con);
            con.Open();
            SqlDataReader listele = komut.ExecuteReader();
            while (listele.Read())
            {
                if (Convert.ToString(listele.GetValue(3)) == tc)
                {
                    a = 5;
                    break;
                }
            }
        }

        //Kişinin kaydı yapılıyor.
        public void kisi_Ekle(Kisi kisi)

        {
            if (a != 5)
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
                    //con.Open();
                    SqlCommand komut = new SqlCommand("INSERT INTO uyeler(ad,soyad,tc,email,tel,sifre) VALUES('" + kisi.Ad + "','" + kisi.Soyad + "','" + kisi.Tc + "','" + kisi.Email + "','" + kisi.Tel + "','" + kisi.Sifre + "')", con);
                    komut.ExecuteNonQuery();
                    con.Close();
                }

                catch
                {
                    kontrol = false;
                }
            }           

        }
        public bool KayitOlduMu()
        {
            return kontrol;
        }

        //EMINE


        //Kişinin giriş için kontrolü yapılıyor.
        public bool kisiKontrol(string email, string sifre)
        {

            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            con.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM uyeler WHERE email = '" + email + "'  AND sifre = '" + sifre + "'", con);
            SqlDataReader listele = komut.ExecuteReader();
            if (!listele.HasRows)
            {
                giris_kontrol = false;
            }
            con.Close();
            return giris_kontrol;
        }
        //Kişinin bilgileri veritabanından çekiliyor.
        public List<string> kisiGetir(string email, string sifre)
        {

            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlConnection con2 = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");

            con.Open();
            con2.Open();
            SqlCommand komut2 = new SqlCommand("SELECT tc FROM uyeler WHERE email = '" + email + "'", con2);
            string tc=Convert.ToString(komut2.ExecuteScalar());
            SqlCommand komut = new SqlCommand("SELECT * FROM bilet WHERE uyeTc = '" + tc + "'", con);
            

            SqlDataReader listele = komut.ExecuteReader();
            List<string> bilgiler = new List<string>();
            //Bilet bilgisi var mı yok mu diye kontrol ediliyor.
            if (listele.Read())
            {
                bilgiler.Add(Convert.ToString(listele["ad"]));
                bilgiler.Add(Convert.ToString(listele["soyad"]));
                bilgiler.Add(Convert.ToString(listele["nereden"]));
                bilgiler.Add(Convert.ToString(listele["nereye"]));
                bilgiler.Add(Convert.ToString(listele["sirket"]));
                bilgiler.Add(Convert.ToString(listele["fiyat"]));
                bilgiler.Add(Convert.ToString(listele["tarih"]));
                bilgiler.Add(Convert.ToString(listele["saat"]));
                bilgiler.Add(Convert.ToString(listele["uyeTc"]));
            }

            listele.Close();
            con.Close();
            return bilgiler;

        }
        //Merve
        public bool uyeVarMi(string tc)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("SELECT * FROM uye where tc='" + tc + "'", con);
            con.Open();
            object uye = komut.ExecuteScalar();
            if (uye != null)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }

        public void kisiEkle(string ad, string soyad, string tc, string cinsiyet, string tel, string email)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("INSERT INTO uye(ad,soyad,tc,cinsiyet,tel,email) VALUES('" + ad + "','" + soyad + "','" + tc + "','" + cinsiyet + "','" + tel + "','" + email + "')", con);
            con.Open();
            komut.ExecuteNonQuery();
            con.Close();
        }

        public void kisiEkle(Uye uye)
        {
           SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("INSERT INTO uye(ad,soyad,tc,cinsiyet,tel,email) VALUES('" + uye.ad + "','" + uye.soyad + "','" + uye.tc + "','" + uye.cinsiyet + "','" + uye.tel + "','" + uye.email + "')", con);
            con.Open();
            komut.ExecuteNonQuery();
        }

        public void biletEkle(string tc, string nereden, string nereye, string sirket, string fiyat, string tarih, string saat)
        {
           SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("insert into bilet(nereden,nereye,sirket,fiyat,tarih,saat,uyeTc)values(" + nereden + "," + nereye + "," + sirket + "," + fiyat + "," + tarih + "," + saat + "," + tc + ")", con);
            con.Open();
            komut.ExecuteNonQuery();
        }

        public void biletEkle(Bilet bilet)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("insert into bilet(nereden,nereye,sirket,fiyat,tarih,saat,uyeTc,pnr,soyad,ad)values('" + bilet.nereden + "','" + bilet.nereye + "','" + bilet.sirket + "','" + bilet.fiyat + "','" + bilet.tarih + "','" + bilet.saat + "','" + bilet.uyeTc + "','" + bilet.pnr + "','" + bilet.soyad + "','" + bilet.ad + "')", con);
            con.Open();
            komut.ExecuteNonQuery();
        }

        public void kartEkle(string kartNo, string SKTarih, string cvv, string tc)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("insert into kart(kartNo,SKTatih,cvv,uyeTc) values (" + kartNo + "," + SKTarih + "," + cvv + "," + tc + ")", con);
            con.Open();
            komut.ExecuteNonQuery();
        }

        public void kartEkle(Kart kart)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("insert into kart(kartNo,SKTarih,cvv,uyeTc) values (" + kart.kartNo + "," + kart.SKTarih + "," + kart.cvv + "," + kart.uyeTc + ")", con);
            con.Open();
            komut.ExecuteNonQuery();
        }
        public string fiyatGetir(string nereden, string nereye, string sirket)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("SELECT fiyat FROM fiyat where nereden='" + nereden + "' and nereye='" + nereye + "' and sirket='" + sirket + "'", con);
            con.Open();
            string fiyat = (string)komut.ExecuteScalar();
            return fiyat;
        }
        public void biletSil(string soyad, string pnr)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=bilet_ucusta;Integrated Security=True");
            SqlCommand komut = new SqlCommand("Delete FROM bilet where soyad='" + soyad + "' and PNR='" + pnr + "'", con);
            con.Open();
            komut.ExecuteNonQuery();
        }
    }
}
