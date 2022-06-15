<%@ Page Title="Detaylar" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detaylar.aspx.cs" Inherits="_2014113026.detaylar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 36px;
        }
        .auto-style2 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString %>" SelectCommand="SELECT * FROM [kitap_kayit]" >
    </asp:SqlDataSource>
    <div class="container" >
        <div class="jumbotron">
    <div class="wrapper">
<div class="text" style="font-family: 'Oldenburg'; font-size: 25px; ">
Kitap Ayrıntıları<br /> <br />
</div>
<div class="container">
<asp:Image ID="imgProfil" runat="server" Height="270px" ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>'
Width="193px" BorderColor="#333333" BorderStyle="Outset"
BorderWidth="10px" style="float: left" ImageAlign="AbsMiddle"/>
    
    
    &nbsp;
<table cellspacing="10" class="alert-light" frame="box" >
<tr>
<td class="auto-style1" ><strong>Kitap Adı</strong></td>
<td class="auto-style2">
<asp:Label ID="lblkitap_adi" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25" ><strong class="align-content-lg-between">Açıklama</strong></td>
<td class="style1">
<asp:Label ID="lblkitap_aciklama" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="style4" ><b>Eklenme Tarihi</b></td>
<td class="style5">
<asp:Label ID="lblekleme_tarihi" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25" ><b>Yayın Yılı</b></td>
<td class="style1">
<asp:Label ID="lblyayin_yili" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25" ><b>Yazar</b></td>
<td class="style1">
<asp:Label ID="lblyazari" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25" ><b>Kategori</b></td>
<td class="style1">
<asp:Label ID="lblkategori" runat="server" Text="text" />
</td>
</tr>
<tr>
<td class="w-25" ><b>ISBN</b></td>
<td class="style1">
<asp:Label ID="lblisbn_no" runat="server" Text="text" />
</td>
</tr>
</table>
</div>
<br />
</div>
            </div>
        </div>
    <br /> <br /> <br /> <br /> <br /> <br /> <br />  <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> 
</asp:Content>
