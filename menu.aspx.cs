using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void clickAmericano(object sender, EventArgs e)
        {
            btnAmericano.Attributes["class"] = "active";
            btnCappuccino.Attributes["class"] = null;
            btnLatte.Attributes["class"] = null;

            menuContent.InnerHtml = "<div class='tm-product'>" +
                                        "<img src='images/americano/americano.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Classic Americano</h3>" +
                                            "<p class='tm-product-description'>Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$5</a>" +
                                        "</div>" +
                                    "</div>";
        }

        protected void clickCappuccino(object sender, EventArgs e)
        {
            btnCappuccino.Attributes["class"] = "active";
            btnAmericano.Attributes["class"] = null;
            btnLatte.Attributes["class"] = null;

            menuContent.InnerHtml = "<div class='tm-product'>" +
                                        "<img src='images/cappuccino/cappuccino.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Classic Cappuccino</h3>" +
                                            "<p class='tm-product-description'>Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.50</a>" +
                                        "</div>" +
                                    "</div>" +

                                    "<div class='tm-product'>" +
                                        "<img src='images/cappuccino/iced cappuccino.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Iced Cappuccino</h3>" +
                                            "<p class='tm-product-description'>With just a splash of milk, an Iced Cappuccino offers a balanced cup with a stronger espresso flavor and a velvety, frothy foam with a crisp, cool undercurrent.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.90</a>" +
                                        "</div>" +
                                    "</div>";
        }

        protected void clickLatte(object sender, EventArgs e)
        {
            btnCappuccino.Attributes["class"] = null;
            btnAmericano.Attributes["class"] = null;
            btnLatte.Attributes["class"] = "active";

            menuContent.InnerHtml = "<div class='tm-product'>" +
                                        "<img src='images/latte/latte.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Classic Latte</h3>" +
                                            "<p class='tm-product-description'>Dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk-forward warm-up.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.20</a>" +
                                        "</div>" +
                                    "</div>" +

                                    "<div class='tm-product'>" +
                                        "<img src='images/latte/caramel latte.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Caramel Latte</h3>" +
                                            "<p class='tm-product-description'>Caramel Latte is made by mixing espresso with caramel syrup and pouring steamed milk on top.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.40</a>" +
                                        "</div>" +
                                    "</div>" +

                                    "<div class='tm-product'>" +
                                        "<img src='images/latte/vanilla latte.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Vanilla Latte</h3>" +
                                            "<p class='tm-product-description'>Vanilla Latte is made with full-bodied espresso, creamy steamed milk and classic vanilla syrup.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.30</a>" +
                                        "</div>" +
                                    "</div>" +

                                    "<div class='tm-product'>" +
                                        "<img src='images/latte/mocha latte.jpg' alt='Product' width='136px' height='136px'>" +
                                        "<div class='tm-product-text'>" +
                                            "<h3 class='tm-product-title'>Mocha Latte</h3>" +
                                            "<p class='tm-product-description'>A mocha latte is made of espresso, milk, and mocha syrup.</p>" +
                                        "</div>" +
                                        "<div class='tm-product-price'>" +
                                            "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$4.80</a>" +
                                        "</div>" +
                                    "</div>";
        }
    }
}