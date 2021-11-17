<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BiletAl.aspx.cs" Inherits="bilet_ucusta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url('img/a.banner.jpg')">
        <div class="kutu"  style="background-color:aliceblue; width:680px; margin-left:180px; padding-right:50px;padding-top:30px; padding-bottom:15px; opacity:0.8; border-radius:10px;" >
        <div class="div3" style="margin-left:100px;">
            <h1><span class="glyphicon glyphicon-globe" style="font-size:25px;"/> BİLET BİLGİLERİ:</h1><br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size:large;color:black;"  >Nereden: <br /></label>
            <asp:DropDownList ID="ddNereden" 
                
                runat="server" 
                Font-Names="Adobe Caslon Pro">
                <asp:ListItem>İstanbul</asp:ListItem>
                <asp:ListItem>Ankara</asp:ListItem>
                <asp:ListItem>İzmir</asp:ListItem>
                <asp:ListItem>Antalya</asp:ListItem>
                <asp:ListItem>Adana</asp:ListItem>
                <asp:ListItem>Adıyaman</asp:ListItem>
                <asp:ListItem>Ağrı</asp:ListItem>
                <asp:ListItem>Amasya</asp:ListItem>
                <asp:ListItem>Balıkesir</asp:ListItem>
                <asp:ListItem>Bingöl</asp:ListItem>
                <asp:ListItem>Bursa</asp:ListItem>
                <asp:ListItem>Çanakkale</asp:ListItem>
                <asp:ListItem>Denizli</asp:ListItem>
                <asp:ListItem>Diyarbakır</asp:ListItem>
                <asp:ListItem>Elazığ</asp:ListItem>
                <asp:ListItem>Erzincan</asp:ListItem>
                <asp:ListItem>Erzurum</asp:ListItem>
                <asp:ListItem>Eskişehir</asp:ListItem>
                <asp:ListItem>Gaziantep</asp:ListItem>
                <asp:ListItem>Hakkari</asp:ListItem>
                <asp:ListItem>Hatay</asp:ListItem>
                <asp:ListItem>Isparta</asp:ListItem>
                <asp:ListItem>Kars</asp:ListItem>
                <asp:ListItem>Kastamonu</asp:ListItem>
                <asp:ListItem>Kayseri</asp:ListItem>
                <asp:ListItem>Kocaeli</asp:ListItem>
                <asp:ListItem>Konya</asp:ListItem>
                <asp:ListItem>Kütahya</asp:ListItem>
                <asp:ListItem>Malatya</asp:ListItem>
                <asp:ListItem>Kahramanmaraş</asp:ListItem>
                <asp:ListItem>Mardin</asp:ListItem>
                <asp:ListItem>Bodrum</asp:ListItem>
                <asp:ListItem>Dalaman</asp:ListItem>
                <asp:ListItem>Muş</asp:ListItem>
                <asp:ListItem>Nevşehir</asp:ListItem>
                <asp:ListItem>Ordu</asp:ListItem>
                <asp:ListItem>Samsun</asp:ListItem>
                <asp:ListItem>Siirt</asp:ListItem>
                <asp:ListItem>Sinop</asp:ListItem>
                <asp:ListItem>Sivas</asp:ListItem>
                <asp:ListItem>Çorlu</asp:ListItem>
                <asp:ListItem>Tokat</asp:ListItem>
                <asp:ListItem>Trabzon</asp:ListItem>
                <asp:ListItem>Şanlıurfa</asp:ListItem>
                <asp:ListItem>Uşak</asp:ListItem>
                <asp:ListItem>Van</asp:ListItem>
                <asp:ListItem>Zonguldak</asp:ListItem>
                <asp:ListItem>Batman</asp:ListItem>
                <asp:ListItem>Şırnak</asp:ListItem>
                <asp:ListItem>Igdır</asp:ListItem>
            </asp:DropDownList>
            <span class="glyphicon glyphicon-transfer" style="font-size:25px; margin-left:20px; margin-right:20px;color:#87CEFA;"></span>
            
&nbsp;<label style="font-family: 'Adobe Caslon Pro'; font-size: large;color:black;"  >Nereye: <br /></label>
            &nbsp;<asp:DropDownList 
                ID="ddNereye" Font-Names="Adobe Caslon Pro"
                runat="server">
                <asp:ListItem>İstanbul</asp:ListItem>
                <asp:ListItem>Ankara</asp:ListItem>
                <asp:ListItem>İzmir</asp:ListItem>
                <asp:ListItem>Antalya</asp:ListItem>
                <asp:ListItem>Adana</asp:ListItem>
                <asp:ListItem>Adıyaman</asp:ListItem>
                <asp:ListItem>Ağrı</asp:ListItem>
                <asp:ListItem>Amasya</asp:ListItem>
                <asp:ListItem>Balıkesir</asp:ListItem>
                <asp:ListItem>Bingöl</asp:ListItem>
                <asp:ListItem>Bursa</asp:ListItem>
                <asp:ListItem>Çanakkale</asp:ListItem>
                <asp:ListItem>Denizli</asp:ListItem>
                <asp:ListItem>Diyarbakır</asp:ListItem>
                <asp:ListItem>Elazığ</asp:ListItem>
                <asp:ListItem>Erzincan</asp:ListItem>
                <asp:ListItem>Erzurum</asp:ListItem>
                <asp:ListItem>Eskişehir</asp:ListItem>
                <asp:ListItem>Gaziantep</asp:ListItem>
                <asp:ListItem>Hakkari</asp:ListItem>
                <asp:ListItem>Hatay</asp:ListItem>
                <asp:ListItem>Isparta</asp:ListItem>
                <asp:ListItem>Kars</asp:ListItem>
                <asp:ListItem>Kastamonu</asp:ListItem>
                <asp:ListItem>Kayseri</asp:ListItem>
                <asp:ListItem>Kocaeli</asp:ListItem>
                <asp:ListItem>Konya</asp:ListItem>
                <asp:ListItem>Kütahya</asp:ListItem>
                <asp:ListItem>Malatya</asp:ListItem>
                <asp:ListItem>Kahramanmaraş</asp:ListItem>
                <asp:ListItem>Mardin</asp:ListItem>
                <asp:ListItem>Bodrum</asp:ListItem>
                <asp:ListItem>Dalaman</asp:ListItem>
                <asp:ListItem>Muş</asp:ListItem>
                <asp:ListItem>Nevşehir</asp:ListItem>
                <asp:ListItem>Ordu</asp:ListItem>
                <asp:ListItem>Samsun</asp:ListItem>
                <asp:ListItem>Siirt</asp:ListItem>
                <asp:ListItem>Sinop</asp:ListItem>
                <asp:ListItem>Sivas</asp:ListItem>
                <asp:ListItem>Çorlu</asp:ListItem>
                <asp:ListItem>Tokat</asp:ListItem>
                <asp:ListItem>Trabzon</asp:ListItem>
                <asp:ListItem>Şanlıurfa</asp:ListItem>
                <asp:ListItem>Uşak</asp:ListItem>
                <asp:ListItem>Van</asp:ListItem>
                <asp:ListItem>Zonguldak</asp:ListItem>
                <asp:ListItem>Batman</asp:ListItem>
                <asp:ListItem>Şırnak</asp:ListItem>
                <asp:ListItem>Igdır</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;color:black;"  >Tarih ve Saat: <br /></label>&nbsp;
            
        <meta charset="utf-8">
        <link href="Content/jquery.datetimepicker.min.css" rel="stylesheet">
                        <input type="text" runat="server"
                name="tarih" 
                id="tarih" placeholder="Tarih" ClientIDMode="Static" />
                        <script src="Scripts/jquery-1.12.2.min.js"></script>
    <script src="Scripts/jquery.datetimepicker.full.min.js"></script>
    
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;color:black;"  >Şirket: <br /></label>
            <asp:DropDownList ID="ddSirket" 
                
                runat="server" 
                Font-Names="Adobe Caslon Pro">
                <asp:ListItem>THY</asp:ListItem>
                <asp:ListItem>Pegasus</asp:ListItem>
                <asp:ListItem>Anadolu Jet</asp:ListItem>
                <asp:ListItem>Onur Air</asp:ListItem>
                <asp:ListItem>SunExpress</asp:ListItem>
                <asp:ListItem>Atlas Global</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" 
                runat="server" 
                Text="Fiyat Hesapla" 
                Font-Names="Adobe Caslon Pro" 
                
                OnClick="Button1_Click" 
                
                BackColor="LightSkyBlue" 
                BorderColor="LightSkyBlue"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;color:black;">
            Fiyat:&nbsp;&nbsp;
            </label>
            <asp:Label ID="lFiyat" 
                runat="server"></asp:Label>
    </div>
    </div>
        </div>
            <div class="jumbotron" style="margin-left:50px; width:1170px; padding-left:10px; float:left; display:inline-block;
            background-color:whitesmoke;
            background-color: whitesmoke;border-top: medium solid LightSkyBlue;
             border-radius:10px; padding-right:50px; margin-left:20px; height: 665px;" >
            <div class="div3">
                <h1> 
                    <span class="glyphicon glyphicon-user" 
                        style="font-size:25px; "/> KİŞİSEL BİLGİLER:</h1><br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Ad: <br /></label>
            <asp:TextBox ID="tbAd"
                placeholder="Ad" 
                     
                    runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Soyad: <br /></label>
            <asp:TextBox ID="tbSoyad"
                placeholder="Soyad" 
                    
                    
                    runat="server"></asp:TextBox>
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >TC: <br /></label> 
                <asp:TextBox ID="tbTc" 
                runat="server"
                placeholder="TC"  MaxLength="11"></asp:TextBox>
&nbsp;&nbsp; <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Cinsiyet: <br /></label>
            <asp:DropDownList ID="ddCinsiyet" 
                
                    runat="server" 
                    Font-Names="Adobe Caslon Pro">
                <asp:ListItem>Kadın</asp:ListItem>
                <asp:ListItem>Erkek</asp:ListItem>
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" 
                    runat="server">
                </asp:SqlDataSource>
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Telefon NO: <br /></label>
            <asp:TextBox ID="tbTel" 
                    runat="server"
                placeholder="Telefon NO" 
onfocus="this.placeholder = ''"
                    
                    
                    
                    MaxLength="10" EnableViewState="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp; 
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >E-mail: <br /></label>
            <asp:TextBox ID="tbEmail"
                placeholder="E-mail" 
                    
                    runat="server" ></asp:TextBox>
            <br />
        </div>
                
         <div class="div3">   <br />
           <h1 style="font-family:'Adobe Caslon Pro'"> <span class="glyphicon glyphicon-credit-card" 
                    style="font-size:25px; "/> ÖDEME BİLGİLERİ:</h1>
             <br />
        
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Kart Numarası: <br /></label>
            <asp:TextBox ID="tbKartNo"
                placeholder="Kart Numarası" 
                runat="server" 
                MaxLength="16" 
                
                 
                 
                 
                 Width="215px"></asp:TextBox>
            <br />
            <br />
             <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >Son Kullanma Tarihi: <br /></label>
        <asp:TextBox ID="tbSKTarih"
                placeholder="Son Kullanma Tarihi" 
                 
                 
                 
                 runat="server"></asp:TextBox>
            <br />
            <br />
           <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >CVV: <br /></label>
            <asp:TextBox ID="tbCvv" 
                runat="server"
                placeholder="CVV" 
                 Width="71px" 
                 
                 MaxLength="3"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" 
                runat="server" 
                
                 Text="Bilet Al"  
                 Font-Names="Adobe Caslon Pro" 
                 
                 OnClick="Button2_Click" 
                 
                 BackColor="LightSkyBlue" 
                 BorderColor="LightSkyBlue" />
            &nbsp; 
             <asp:Label ID="Label2" 
                 
                 runat="server" 
                 Text="PNR KODU:" 
                 ForeColor="LightSkyBlue" Font-Names="Adobe Caslon Pro" Font-Size="Larger"></asp:Label>
            
            
             <asp:Label ID="Label1" 
                 
                 runat="server" 
                 Font-Names="Adobe Caslon Pro"></asp:Label>
            
            <br />
        </div>
   </div>
    <div class="jumbotron" style="width:400px; float:left; display:inline-block;
            background-color:whitesmoke;
            background-color: whitesmoke;border-top: solid;
             border-top-color: LightSkyBlue; padding-left:5px;
             border-radius:10px; margin-left:20px; padding-right:50px;"> 
        <div class="div3">
                <h1> 
                    <span class="glyphicon glyphicon-tags" 
                        style="font-size:25px;"/> BİLET İPTAL:</h1><br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;"  >PNR Kodu: <br /></label>
            <asp:TextBox ID="tbPnr" 
                
                    placeholder="PNR Kodu" 
                    runat="server" 
                    MaxLength="8"></asp:TextBox>
            <br />
            <br />
            <label style="font-family: 'Adobe Caslon Pro'; font-size: large;" >Yolcu Soyad: <br /></label> 

                <asp:TextBox ID="tbiptalSoyad" 
                    runat="server" 
                    placeholder="Soyad"></asp:TextBox>
            <br /><br />
            <br />
                <asp:Button ID="Button3" 
                    runat="server"                  
                    Text="Bilet İptal" 
                    BackColor="LightSkyBlue" 
                    BorderColor="LightSkyBlue" 
                    
                    Font-Names="Adobe Caslon Pro" 
                    OnClick="Button3_Click" />
                    
        </div>

    </div>

</span></span></span></span>

</asp:Content>
