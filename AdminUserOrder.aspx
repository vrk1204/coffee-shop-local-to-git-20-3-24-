﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AdminUserOrder.aspx.cs" Inherits="Order.AdminUserOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-bg-color-repeater">
        <h2 class="h2-font-repeater SetToCenter">CUSTOMER'S ORDERS</h2>

        <div id="orderTable" runat="server" class="tm-menu-product-content">
            <!-- menu content -->
            <asp:Repeater ID="repeaterAdminOrder" runat="server">
                <ItemTemplate>
                    <div class='tm-product-repeater'>
                        <asp:Image ID="coffeeImage" ImageUrl='<%# GetImage(Eval("Flavor").ToString()) %>' runat="server" Width="136px" Height="136px" />
                        <div class='tm-product-text OrderRepeaterDetails'>
                            <asp:LinkButton ID="orderLinkButton" runat="server" CommandArgument='<%# Eval("OrderId").ToString() %>' OnClick="sendOrderID">
                                <h3 class="tm-product-title"><%# Eval("Flavor") %></h3>
                            </asp:LinkButton>
                            <p class='tm-product-description'>Order ID: <%# Eval("OrderId") %></p>
                            <p class='tm-product-description'>Status: <%# Eval("Status") %></p>
                            <p class='tm-product-description'>Quantity: <%# Eval("Quantity") %></p>
                            <p class='tm-product-description'>Toppings: <%# Eval("Topping") %></p>
                            <p id="pAddOns" class='tm-product-description'>Add Ons: <%# AddOns(Eval("BrownSugar").ToString(), Eval("WhiteSugar").ToString(), Eval("Salt").ToString(), Eval("Creamer").ToString(), Eval("Stirrer").ToString()) %></p>
                        </div>
                        <div class='tm-product-price'>
                            <h4 class='tm-product-price-link tm-handwriting-font'>$<%# Eval("TotalPrice") %></h4>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
