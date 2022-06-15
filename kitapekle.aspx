<%@ Page Title="Kitap Ekle" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kitapekle.aspx.cs" Inherits="_2014113026.kitapekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <div class="container" style="text-align:center;">
    
    <div class="jumbotron" style="text-align:center;">

         <h4>Kitap Ekleme Paneli</h4>
         <div> <a href="yonetim.aspx" class="btn btn-primary" style="text-align:left;">Geri Dön</a></div>
    </div>
      

        <div style="background-color: #c5c5c5;border: 4px double;border-radius: 35px; height: 555px;">
            <br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Kitap Adı"></asp:TextBox><br />
        <br />
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Kitap Açıklaması" TextMode="MultiLine" width="190" Height="70"></asp:TextBox><br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString3 %>" SelectCommand="SELECT * FROM [kategori]">
</asp:SqlDataSource>
<br />
    <asp:TextBox ID="TextBox4" runat="server" placeholder="Yayın Yılı" ></asp:TextBox><br />
        <br />
    <asp:TextBox ID="TextBox5" runat="server" placeholder="Yazarı"></asp:TextBox><br />
        <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="kategori_adi" DataValueField="kategori_adi" Width="188px">
            </asp:DropDownList>
            <br />
        <br />
    <asp:TextBox ID="TextBox7" runat="server" placeholder="Kitap ISBN"></asp:TextBox><br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" Width="190px" /> 
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
     <br /> <br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Kaydet" />
<br />
            <br />
                </div>
        </div>
    <br />
</asp:Content>
