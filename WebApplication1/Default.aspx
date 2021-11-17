<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bilet_ucusta._Default" %>    
<asp:Content runat="server" ContentPlaceHolderID="MainContent" ID="BodyContent">
        
    <div style="position:absolute; left:0px; background-image:url('https://a-static.besthdwallpaper.com/cielo-claro-sobre-las-nubes-y-la-puesta-del-sol-papel-pintado-3554x1999-1593_53.jpg'); background-repeat:no-repeat; width:1900px; height:550px; background-size:100%; background-position-y:bottom; margin-top:50px;">
        <div class="row">
            <div class="col-md-6">
            <div style="margin-left:150px; margin-top:100px;">
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:20px; display:inline;">Nereden:</p> <asp:DropDownList runat="server" Enabled="false" Height="30px" Width="100px" BackColor="IndianRed" Font-Bold="true" ForeColor="AntiqueWhite">
             <asp:ListItem>İstanbul</asp:ListItem>
             </asp:DropDownList>&nbsp;&nbsp;
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:20px; display:inline;">Nereye:</p> <asp:DropDownList runat="server" Enabled="false" Height="30px" Width="100px" BackColor="IndianRed" Font-Bold="true" ForeColor="AntiqueWhite">
             <asp:ListItem>Ankara</asp:ListItem>
             </asp:DropDownList>
                <br />
             <div style="margin-top:30px; margin-left:70px;">
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:20px; margin-left:50px;">Yolculuk Tarihi:</p> <asp:Calendar runat="server" Enabled="false" BackColor="IndianRed" ForeColor="AntiqueWhite" BorderColor="Tomato"></asp:Calendar>
            </div>
            <br />
            <div style="margin-left:110px;"><asp:Button runat="server" Text="Uçak Bileti Bul" BackColor="indianred" BorderColor="indianred" Height="40px" Width= "150px" ForeColor="AntiqueWhite" Font-Bold="true" OnClick="BiletAlYonlen"/></div>
            </div>
            </div>
            <div style="margin-top:20px;">
            <div class="col-md-3">
            <span class="glyphicon glyphicon-plane" style="font-size:48px; margin-left:105px; color:aliceblue;"></span>
            <h2 style="font-family:Adobe Caslon Pro; color:indianred; font-size:28px">BİZİM SİSTEMİMİZ</h2>
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:16px">Bilet uçuşta sitesi olarak en önemli uçak firmalarını sizler için derledik.Tüm uçak firmalarını bilet uçuşta karşılaştırabilir,bütçenize uygun uçak biletini online alabilirsiniz.</p>
        </div>
        <div class="col-md-3"> 
            <span class="glyphicon glyphicon-time" style="font-size:48px; margin-left:90px; color:aliceblue;"></span>
            <h2 style="font-family:Adobe Caslon Pro; color:indianred; font-size:28px">HEMEN BİLETİNİ AL</h2>
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:16px">Bilet uçuşta size tüm uçak firmalarının bilet fiyatlarını sorgulama ve karşılaştırma imkanı sunar.Bu sayede size uygun uçak biletini bulur ve hızlı bir şekilde satın alırsınız.</p>
        </div>
        <div class="col-md-3">
            <span class="glyphicon glyphicon-lock" style="font-size:48px; margin-left:110px; color:aliceblue;"></span>
            <h2 style="font-family:Adobe Caslon Pro; color:indianred; font-size:28px">GÜVENLİ ÖDEME</h2>
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:16px">Tüm uçak bilet alımlarını ister evinizden ister işyerinizden ya da dilerseniz mobil aracılığıyla kolay hızlı ve güvenli bir şekilde gerçekleştirebilirsiniz.</p>
        </div>
        <div class="col-md-3">
            <span class="glyphicon glyphicon-earphone" style="font-size:48px; margin-left:65px; color:aliceblue;"></span>
            <h2 style="font-family:Adobe Caslon Pro; color:indianred; font-size:28px">7/24 MÜŞTERİ HİZMETİ</h2>
            <p style="font-family:Adobe Caslon Pro; color:antiquewhite; font-size:16px">Bilet uçuşta uygulaması üzerinden yapacağınız tüm işlemlerinizde bütün müşteri hizmetleri ekibimiz 7/24 yanınızda.İster arayarak ister sitemiz aracılığıyla müşteri hizmetleri ekibimizden yardım alabilirsiniz.</p>
        </div>
        </div>
        </div>
       
     </div>
       </asp:Content>