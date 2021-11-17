<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UyeGirisYonlendirme.aspx.cs" Inherits="bilet_ucusta.UyeGirisYonlendirme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
    #iskele 
{ 
margin:0 auto; 
padding:0px;  
width:500px; 
} 

.div-2 {width:500px;height:auto;padding-left:100px;
        border-color:#DCDCDC; margin-top:100px;
} 
</style> 
    <div class="jumbotron" style="border-style: double;margin-top:50px; height: 850px; width: 592px;"  id="iskele">
<div class="div-2">
   <h2 style="font-family: Georgia, 'Times New Roman', Times, serif; text-decoration: underline">Bilet Bilgileriniz</h2> 
         <label style="font-family: 'Adobe Caslon Pro'">Ad : <br />
            <asp:TextBox runat="server" ID="ad" Width="200px" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Soyad : <br />
            <asp:TextBox runat="server" ID="soyad" Width="200px" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Nereden : <br />
            <asp:TextBox runat="server" ID="nereden" Width="200px" MaxLength="11" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Nereye : <br />
            <asp:TextBox runat="server" ID="nereye" Width="200px" Maxlength="11" TextMode="Phone" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Sirket : <br />
            <asp:TextBox runat="server" ID="sirket" Width="200px" Maxlength="11" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Fiyat <br />
             <asp:TextBox runat="server" ID="fiyat" Width="200px" Maxlength="11" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Tarih <br />
            <asp:TextBox runat="server" ID="tarih" Width="200px" Maxlength="11" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">Saat: <br />
            <asp:TextBox runat="server" ID="saat" Width="200px" Maxlength="11" Enabled="false"></asp:TextBox></label><br /><br />
        <label style="font-family: 'Adobe Caslon Pro'">TC: <br />
            <asp:TextBox runat="server" ID="tc" Width="200px" Maxlength="11" Enabled="false"></asp:TextBox></label><br /><br />
</div> 
</div>
</asp:Content>
