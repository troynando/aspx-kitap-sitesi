<%@ Page Title="Son Eklenen Kitaplar" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="soneklenen15kitap.aspx.cs" Inherits="_2014113026.soneklenen15kitap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <div class="jumbotron">
            <h4 style="font-family:'Oldenburg'; text-align:center; font-size:40px;" >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString2 %>" SelectCommand="SELECT TOP 4 * FROM [kitap_kayit] order by id desc">

                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString %>" SelectCommand="SELECT top 4 * from [kitap_kayit] WHERE ([kategori] = @kategori)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Edebiyat" Name="kategori" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString2 %>" SelectCommand="SELECT * FROM [kitap_kayit] WHERE ([kategori] = @kategori)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Bilim Kurgu" Name="kategori" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                Son Eklenen Kitaplar</h4>
            </div>
       
        <div class="jumbotron jumbotron-fluid" >
             
             
             <div class="container" style="text-align:center;"> 
                 <br />
                 <h4 style="text-align:center; font-family:'Oldenburg';">Son Eklenenler</h4>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="20">
        <ItemTemplate>
           
<div class="card bg-light border-danger p-2">
<asp:Image ID="Image2" CssClass="align-self-center border-dark"
ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>' runat="server" ImageAlign="Bottom" Width="200" Height="250"/>
<div class="card-body bg-danger">
<h5 class="card-title text-light text-lg-center"><%#Eval("kitap_adi") %></h5>
<p class="card-text"><%#Eval("yazari") %></p>
<a href="detaylar.aspx?kitapid=<%#Eval("id") %>" class="btn btn-dark" >Kitap Ayrıntıları</a>
</div>

</div>
 </div>
</ItemTemplate>

    </asp:DataList>
    </div>
             <div class="container" style="text-align:center;"> <br />
                 <h4 style="text-align:center; font-family:'Oldenburg';">Edebiyat</h4>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4" CellPadding="20">
        <ItemTemplate>
<div class="card bg-light border-danger p-2">
<asp:Image ID="Image2" CssClass="align-self-center border-dark"
ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>' runat="server" ImageAlign="Bottom" Width="200" Height="250"/>
<div class="card-body bg-danger">
<h5 class="card-title text-light text-lg-center"><%#Eval("kitap_adi") %></h5>
<p class="card-text"><%#Eval("yazari") %></p>
<a href="detaylar.aspx?kitapid=<%#Eval("id") %>" class="btn btn-dark" >Kitap Ayrıntıları</a>
</div>

</div>
 </div>
</ItemTemplate>

    </asp:DataList>
    </div>
            <div class="container" style="text-align:center;"> <br />
                 <h4 style="text-align:center; font-family:'Oldenburg';">Bilim Kurgu</h4>
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="4" CellPadding="20">
        <ItemTemplate>
<div class="card bg-light border-danger p-2">
<asp:Image ID="Image2" CssClass="align-self-center border-dark"
ImageUrl='<%#Eval("kitap_resim","~/upload/{0}") %>' runat="server" ImageAlign="Bottom" Width="200" Height="250"/>
<div class="card-body bg-danger">
<h5 class="card-title text-light text-lg-center"><%#Eval("kitap_adi") %></h5>
<p class="card-text"><%#Eval("yazari") %></p>
<a href="detaylar.aspx?kitapid=<%#Eval("id") %>" class="btn btn-dark" >Kitap Ayrıntıları</a>
</div>

</div>
 </div>
</ItemTemplate>

    </asp:DataList>
    </div>
    </div>
    </div>



</asp:Content>
