<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYetenekGuncelle.aspx.cs" Inherits="BlogWeb.AdminYetenekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <h2>YETENEK GÜNCELLEME SAYFASI</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxbxID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom:15px;">
                <asp:Label ID="Label3" runat="server" Text="Yetenek"></asp:Label>
                <asp:TextBox ID="TxtbxYetenek" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Yetenek Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>
