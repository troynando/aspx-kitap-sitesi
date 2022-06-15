<%@ Page Title="Yönetim Paneli" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yonetim.aspx.cs" Inherits="_2014113026.yonetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
	
	
   
	
    <div class="container jumbotron" style="text-align:center; margin-top: 100px;
    max-width: fit-content;">
        <div style="text-align:right;"><a href="kitapekle.aspx" class="btn btn-primary">Kitap Ekle</a></div>
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table-responsive table-dark alert-danger " DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:ImageField DataImageUrlField="kitap_resim" HeaderText="Kapak Resmi" DataImageUrlFormatString="upload/{0}" >
                    <ControlStyle Height="250px" Width="175px" />
                </asp:ImageField>
                <asp:BoundField DataField="id" HeaderText="Kitap ID" SortExpression="id" />
                <asp:BoundField DataField="kitap_adi" HeaderText="Kitap Adı" SortExpression="kitap_adi" />
                <asp:BoundField DataField="kitap_aciklama" HeaderText="Kitap Açıklaması" SortExpression="kitap_aciklama" />
                <asp:BoundField DataField="yayin_yili" HeaderText="Yayın Yılı" SortExpression="yayin_yili" />
                <asp:BoundField DataField="yazari" HeaderText="Yazarı" SortExpression="yazari" />
                <asp:BoundField DataField="kategori" HeaderText="Kategori" SortExpression="kategori" />
                <asp:BoundField DataField="ekleme_tarihi" HeaderText="Ekleme Tarihi" />
                <asp:BoundField DataField="isbn_no" HeaderText="Kitap ISBN" SortExpression="isbn_no" />
                
            </Columns>
           
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kullanicilarConnectionString %>" SelectCommand="SELECT * FROM [kitap_kayit]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [kitap_kayit] WHERE [id] = @original_id AND (([kitap_adi] = @original_kitap_adi) OR ([kitap_adi] IS NULL AND @original_kitap_adi IS NULL)) AND (([kitap_aciklama] = @original_kitap_aciklama) OR ([kitap_aciklama] IS NULL AND @original_kitap_aciklama IS NULL)) AND (([ekleme_tarihi] = @original_ekleme_tarihi) OR ([ekleme_tarihi] IS NULL AND @original_ekleme_tarihi IS NULL)) AND (([yayin_yili] = @original_yayin_yili) OR ([yayin_yili] IS NULL AND @original_yayin_yili IS NULL)) AND (([yazari] = @original_yazari) OR ([yazari] IS NULL AND @original_yazari IS NULL)) AND (([kategori] = @original_kategori) OR ([kategori] IS NULL AND @original_kategori IS NULL)) AND (([kitap_resim] = @original_kitap_resim) OR ([kitap_resim] IS NULL AND @original_kitap_resim IS NULL)) AND (([isbn_no] = @original_isbn_no) OR ([isbn_no] IS NULL AND @original_isbn_no IS NULL))" InsertCommand="INSERT INTO [kitap_kayit] ([kitap_adi], [kitap_aciklama], [ekleme_tarihi], [yayin_yili], [yazari], [kategori], [kitap_resim], [isbn_no]) VALUES (@kitap_adi, @kitap_aciklama, @ekleme_tarihi, @yayin_yili, @yazari, @kategori, @kitap_resim, @isbn_no)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [kitap_kayit] SET [kitap_adi] = @kitap_adi, [kitap_aciklama] = @kitap_aciklama, [ekleme_tarihi] = @ekleme_tarihi, [yayin_yili] = @yayin_yili, [yazari] = @yazari, [kategori] = @kategori, [kitap_resim] = @kitap_resim, [isbn_no] = @isbn_no WHERE [id] = @original_id AND (([kitap_adi] = @original_kitap_adi) OR ([kitap_adi] IS NULL AND @original_kitap_adi IS NULL)) AND (([kitap_aciklama] = @original_kitap_aciklama) OR ([kitap_aciklama] IS NULL AND @original_kitap_aciklama IS NULL)) AND (([ekleme_tarihi] = @original_ekleme_tarihi) OR ([ekleme_tarihi] IS NULL AND @original_ekleme_tarihi IS NULL)) AND (([yayin_yili] = @original_yayin_yili) OR ([yayin_yili] IS NULL AND @original_yayin_yili IS NULL)) AND (([yazari] = @original_yazari) OR ([yazari] IS NULL AND @original_yazari IS NULL)) AND (([kategori] = @original_kategori) OR ([kategori] IS NULL AND @original_kategori IS NULL)) AND (([kitap_resim] = @original_kitap_resim) OR ([kitap_resim] IS NULL AND @original_kitap_resim IS NULL)) AND (([isbn_no] = @original_isbn_no) OR ([isbn_no] IS NULL AND @original_isbn_no IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_kitap_adi" Type="String" />
            <asp:Parameter Name="original_kitap_aciklama" Type="String" />
            <asp:Parameter Name="original_ekleme_tarihi" Type="String" />
            <asp:Parameter Name="original_yayin_yili" Type="String" />
            <asp:Parameter Name="original_yazari" Type="String" />
            <asp:Parameter Name="original_kategori" Type="String" />
            <asp:Parameter Name="original_kitap_resim" Type="String" />
            <asp:Parameter Name="original_isbn_no" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kitap_adi" Type="String" />
            <asp:Parameter Name="kitap_aciklama" Type="String" />
            <asp:Parameter Name="ekleme_tarihi" Type="String" />
            <asp:Parameter Name="yayin_yili" Type="String" />
            <asp:Parameter Name="yazari" Type="String" />
            <asp:Parameter Name="kategori" Type="String" />
            <asp:Parameter Name="kitap_resim" Type="String" />
            <asp:Parameter Name="isbn_no" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kitap_adi" Type="String" />
            <asp:Parameter Name="kitap_aciklama" Type="String" />
            <asp:Parameter Name="ekleme_tarihi" Type="String" />
            <asp:Parameter Name="yayin_yili" Type="String" />
            <asp:Parameter Name="yazari" Type="String" />
            <asp:Parameter Name="kategori" Type="String" />
            <asp:Parameter Name="kitap_resim" Type="String" />
            <asp:Parameter Name="isbn_no" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_kitap_adi" Type="String" />
            <asp:Parameter Name="original_kitap_aciklama" Type="String" />
            <asp:Parameter Name="original_ekleme_tarihi" Type="String" />
            <asp:Parameter Name="original_yayin_yili" Type="String" />
            <asp:Parameter Name="original_yazari" Type="String" />
            <asp:Parameter Name="original_kategori" Type="String" />
            <asp:Parameter Name="original_kitap_resim" Type="String" />
            <asp:Parameter Name="original_isbn_no" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
   
	
	</div>
   
	
	
</asp:Content>
