<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeneyimlerimEkle.aspx.cs" Inherits="BlogWeb.AdminDeneyimlerimEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>DENEYİM EKLEME SAYFASI</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label2" runat="server" Text="Alt Başlık"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label6" runat="server" Text="Açıklama"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label7" runat="server" Text="Tarih"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>
