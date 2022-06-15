
<%@ Page Title="Kitaplar" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kitaplar.aspx.cs" Inherits="_2014113026._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="jumbotron">
        <h1 style="font-family: 'Oldenburg', cursive;font-size: 60px; text-align:center; color:#4a4343;">Tüm Kitaplar</h1>
    </div>
        </div>
        
    
       
    <br />
    <br />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString2 %>" SelectCommand="SELECT * FROM [kitap_kayit] ORDER BY id DESC"></asp:SqlDataSource>
    
    <div class="container" style="text-align:center;">
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="30">
        <ItemTemplate>
<div class="card bg-light border-danger p-2" style="width:220px; height:450px;">
<asp:Image ID="Image2" CssClass="align-self-center border-dark" ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>' runat="server" ImageAlign="Bottom" Width="200" Height="250"/>
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
