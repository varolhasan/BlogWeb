<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSertifikaGuncelle.aspx.cs" Inherits="BlogWeb.AdminSertifikaGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>SERTİFİKA GÜNCELLEME SAYFASI</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxbxID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        <div style="margin-bottom: 15px;">
            <asp:Label ID="Label3" runat="server" Text="Sertifika"></asp:Label>
            <asp:TextBox ID="TxtbxSertifika" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Sertifika Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>
