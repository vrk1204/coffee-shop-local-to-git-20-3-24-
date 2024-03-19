<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Order.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-bg-color">
        <h2 class="h2-font SetToCenter">LOGIN TO YOUR ACCOUNT</h2>

        <br />
        <br />

        <asp:Label ID="lblLoginEmail" runat="server" Text="Email:" CssClass="OrderLabels"></asp:Label>
        <asp:TextBox ID="loginEmail" runat="server"  CssClass="inputs"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqLoginEmail" runat="server" ErrorMessage="Email must not be empty" EnableClientScript="False" ControlToValidate="loginEmail" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />

        <asp:Label ID="lblLoginPassword" runat="server" Text="Password:" CssClass="OrderLabels"></asp:Label>
        <asp:TextBox ID="loginPassword" runat="server" TextMode="Password" CssClass="inputs"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqLoginPassword" runat="server" ErrorMessage="Password must not be empty" EnableClientScript="False" ControlToValidate="loginPassword" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />

        <asp:Label ID="loginErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>

        <br />

        <asp:Button ID="submitLogin" runat="server" Text="Login" OnClick="submitLogin_Click" CssClass="submitDiscord"/>
    </div>
</asp:Content>