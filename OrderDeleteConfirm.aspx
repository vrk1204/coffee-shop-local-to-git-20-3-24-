<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="OrderDeleteConfirm.aspx.cs" Inherits="Order.OrderDeleteConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="outputDelete" runat="server" class="SetToCenter form-bg-color">
        <asp:Label ID="lblDeleteMsg" runat="server" Text="Are you sure you want to delete this order?" CssClass="OrderLabels"></asp:Label>
        <br />
        <asp:Button ID="submitDelete" runat="server" Text="Yes" OnClick="submitDelete_Click" CssClass="btnShort"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="Back" onclick="history.go(-1);return false;" class="btnShort">
        <asp:Label ID="deleteErrorMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
