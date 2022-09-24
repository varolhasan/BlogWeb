﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="BlogWeb.Giris" %>

<!doctype html>
<html lang="tr">
<head>
    <title>Giriş</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/login-form-20/css/style.css">
</head>
<body class="img js-fullheight" style="background-image: url(/login-form-20/images/bg.jpg);">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Giriş Yap</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <form runat="server" class="form-group">
                            <div class="form-group">
                                <%-- <input type="text" class="form-control" placeholder="Kullanıcı Adı" required> --%>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                                    PlaceHolder="Kullanıcı Adı"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <%-- <input id="password-field" type="password" class="form-control" placeholder="Şifre" required> --%>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                                    PlaceHolder="Şifre"></asp:TextBox>
                                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <%--<button type="submit" class="form-control btn btn-primary submit px-3">Giriş Yap</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Giriş Yap" 
                                    class="form-control btn btn-primary submit px-3" OnClick="Button1_Click"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="/login-form-20/js/jquery.min.js"></script>
    <script src="/login-form-20/js/popper.js"></script>
    <script src="/login-form-20/js/bootstrap.min.js"></script>
    <script src="/login-form-20/js/main.js"></script>

</body>
</html>


