<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="UserOrderEditConfirm.aspx.cs" Inherits="Order.UserOrderEditConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="output" runat="server" class="form-bg-color">
        <h2 class="h2-font SetToCenter">ORDER UPDATE DETAILS</h2>

        <br />

        <div class="SetToCenter">
            <asp:Label ID="lblMsg" runat="server" Text="Please double check before updating your order." CssClass="OrderLabels"></asp:Label>
            
            <br />
            <br />
            <br />
            
            <asp:Image ID="image" runat="server" Width="400px" Height="300px" />
        </div>

        <br />
        <br />

        <asp:Label ID="outputStatus" runat="server" Text="Status: " Visible="false" CssClass="OrderLabels"></asp:Label>

        <br />
        <br />

        <asp:Label ID="lblCoffee" runat="server" Text="Coffee:" CssClass="OrderLabels"></asp:Label>
        <asp:Label ID="outputCoffee" runat="server" CssClass="OrderDetails"></asp:Label>
        
        <br />
        <br />

        <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" CssClass="OrderLabels"></asp:Label>
        <asp:Label ID="outputQuantity" runat="server" CssClass="OrderDetails"></asp:Label>

        <br />
        <br />

        <asp:Label ID="lblTopping" runat="server" Text="Topping:" CssClass="OrderLabels"></asp:Label>
        <asp:Label ID="outputTopping" runat="server" CssClass="OrderDetails"></asp:Label>

        <br />
        <br />

        <asp:Label ID="lblAddOns" runat="server" Text="Add-Ons:" CssClass="OrderLabels"></asp:Label>
        <asp:Label ID="outputAddOns" runat="server" CssClass="OrderDetails"></asp:Label>
        
        <br />
        <br />

        <asp:Label ID="lblTotal" Text="Total Price:" runat="server" CssClass="OrderLabels"></asp:Label>
        <asp:Label ID="outputTotal" runat="server" CssClass="OrderDetails"></asp:Label>

        <br />

        <asp:Button ID="submitEditConfirm" runat="server" Text="Confirm" OnClick="submitConfirm_Click" CssClass="submitDiscord"/>
        <input type="button" value="Back" onclick="history.go(-1);return false;" class="submitDiscord">

        <br />

        <asp:Label ID="orderUpdateErrorMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
