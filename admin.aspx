<%@ Page Title="Admin Girişi" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="_2014113026.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div class="container">
        
        <div class="jumbotron" style="margin-top:250px;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString %>" SelectCommand="SELECT kullanici_adi, parola FROM admin WHERE (kullanici_adi = @kullanici_adi) AND (parola = @parola)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="kullanici_adi" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="parola" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

            <div style="text-align:center;">


                <h4 style="font-family:'Oldenburg';">Kullanıcı Adı</h4>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <h4 style="font-family:'Oldenburg';">Parola</h4>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Giriş Yap" />
                <br />
               
               

            </div>


        </div>


    </div>

    <br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
