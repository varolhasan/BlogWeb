<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHobi.aspx.cs" Inherits="BlogWeb.AdminHobi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>HOBİLER</th>
            <th>İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("HOBI") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminHobiSil.aspx?ID=" + Eval("ID") %>' 
                                ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminHobiGuncelle.aspx?ID=" + Eval("ID") %>' 
                                ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink NavigateUrl="AdminHobiEkle.aspx" CssClass="btn btn-primary" ID="HyperLink3" 
        runat="server">Hobi Ekle</asp:HyperLink>
</asp:Content>
