<%@ Page Title="Ana Sayfa" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_2014113026._default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <a href="kitaplar.aspx"> 
        
        <img src="https://erimisil.com/odev/bootstrap/img/banner.webp"  style="width:1110px; height:350px; display:table; margin:auto;"/></a>
        </div> 
    
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString2 %>" SelectCommand="SELECT TOP 4 * FROM kitap_kayit ORDER BY id DESC"></asp:SqlDataSource>
        </div>

    <br />
    <h4 style="text-align:center; font-family: 'Oldenburg'; font-size: 40px;">Son Eklenen 4 Kitap</h4>
   
    <div class="container" style="text-align:center;">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="40">
        <ItemTemplate>
<div class="card bg-light border-danger p-2">
<asp:Image ID="Image2" CssClass="align-self-center border-dark"
ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>' runat="server" ImageAlign="Bottom" Width="180" Height="200"/>
<div class="card-body bg-danger">
<h5 class="card-title text-light text-lg-center"><%#Eval("kitap_adi") %></h5>
<p class="card-text"><%#Eval("yazari") %></p>
<a href="detaylar.aspx?kitapid=<%#Eval("id") %>" class="btn btn-dark" >Kitap Ayrıntıları</a>
</div>
</div></div>
</ItemTemplate>

    </asp:DataList>
        </div>
  
    
</asp:Content>
