<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="bilet_ucusta.UyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css"> 
#iskele 
{ 
margin:0 auto; 
padding:0px;  
width:500px; 
} 

.div-2 {width:500px;height:720px;
        border-color:#DCDCDC; background-color:gainsboro;
} 
</style> 

    <div class="jumbotron" style="border-style: none;margin-top:50px;"  id="iskele">
        <div class="div-2">
        <div style="width:500px;height:150px; background-image:url(https://ak4.picdn.net/shutterstock/videos/1014783674/thumb/12.jpg); background-position-y:center; background-repeat:no-repeat; background-size:cover;">
            <div style="display:inline; margin-left:340px; margin-top:60px; position:absolute;"><h2 style="font-family: Georgia, 'Times New Roman', Times, serif;display:inline; color:white;">KAYIT OL</h2> </div>
        </div>
        <div style="margin-top:20px; padding-left:145px;">
            
            <label style="font-family: 'Adobe Caslon Pro'" >Ad : <br />
            <asp:TextBox runat="server" ID="ad" Width="200px"></asp:TextBox>*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">Soyad : <br />
            <asp:TextBox runat="server" ID="soyad" Width="200px"></asp:TextBox >*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">TC : <br />
            <asp:TextBox runat="server" ID="tc" Width="200px" MaxLength="11" onkeypress="return SayiMi(event)"></asp:TextBox >*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">E-mail : <br />
            <asp:TextBox runat="server" ID="email" Width="200px" TextMode="Email"></asp:TextBox >*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">Telefon : <br />
            <asp:TextBox runat="server" ID="tel" Width="200px" Maxlength="11" TextMode="Phone" onkeypress="return SayiMi(event)"></asp:TextBox >*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">Şifre : <br />
            <asp:TextBox runat="server" type="password" ID="sifre" Width="200px" maxlength="8"></asp:TextBox >*</label><br /><br />
            <label style="font-family: 'Adobe Caslon Pro'">Şifre Tekrar : <br />
            <asp:TextBox runat="server" type="password" ID="sifreTekrar" Width="200px" maxlength="8"></asp:TextBox >*</label><br /><br />
            <span style="margin-left:45px;"><asp:Button runat="server" Text="Kayıt Ol" OnClick="Kayit_click" Width="100px" Height="30px" BackColor="SteelBlue" /></span><br />
            <asp:Label runat="server"  ID="bilgi" ForeColor="Red" Font-Size="20px" ></asp:Label>
        </div>
        
        </div> 
    </div>


<script type="text/javascript" >
function SayiMi(degisken) {
degisken = (degisken) ? degisken : window.event;
var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
if (charCode > 31 && (charCode < 48 || charCode > 57)) {
return false;
}
return true;
}
</script>
</asp:Content>

