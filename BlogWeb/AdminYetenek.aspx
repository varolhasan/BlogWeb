<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYetenek.aspx.cs" Inherits="BlogWeb.AdminYetenek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>YETENEKLER</th>
            <th>İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("YETENEK") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminYetenekSil.aspx?ID=" + Eval("ID") %>' 
                                ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminYetenekGuncelle.aspx?ID=" + Eval("ID") %>' 
                                ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink NavigateUrl="AdminYetenekEkle.aspx" CssClass="btn btn-primary" ID="HyperLink3" 
        runat="server">Yetenek Ekle</asp:HyperLink>
</asp:Content>
