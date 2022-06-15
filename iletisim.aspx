<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="_2014113026.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    
    <div class="container">
    <div class="jumbotron">
        <h1 style="text-align:center;">İLETİŞİM</h1>
    </div>
    </div>
    <div class="container">
    <form method="post">
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Ad</label>
      <input type="text" class="form-control" id="validationDefault01"  required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Soyad</label>
      <input type="text" class="form-control" id="validationDefault02"  required>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Bilgi</label>
      <textarea type="text" class="form-control" id="validationDefault03" style="height: 50px;" required > </textarea>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">Durum</label>
      <select class="custom-select" id="validationDefault04" required>
        <option>Destek</option>
        <option>Öneri</option>
      </select>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault05">Posta Kodu</label>
      <input type="text" class="form-control" id="validationDefault05" required>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Şartlar Ve Koşulları Kabul Ediyorum.
      </label>
    </div>
  </div>
  <a href="mailto:troynando07@outlook.com" style="color:white;" class="btn btn-primary">Gönder</a>
</form>
</div>
   
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
