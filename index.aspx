<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="index.aspx.cs" Inherits="Order.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="tm-welcome-section">
              <div class="container tm-position-relative">
                <div class="tm-lights-container">
                  <img src="img/light.png" alt="Light" class="light light-1">
                  <img src="img/light.png" alt="Light" class="light light-2">
                  <img src="img/light.png" alt="Light" class="light light-3">  
                </div>        
                <div id="divWelcome" runat="server" class="row tm-welcome-content">
                  <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="img/header-line.png" alt="Line" class="tm-header-line">&nbsp;Welcome To&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="tm-header-line"></h2>
                  <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>
                  <p class="gray-text tm-welcome-description"></p>
                  <a id="btnDetails" runat="server" href="#main" class="tm-more-button tm-more-button-welcome">Details</a>
                </div>
                <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
              </div>      
    </section>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="tm-section row">
          <div class="col-lg-9 col-md-9 col-sm-8">
            <h2 class="tm-section-header gold-text tm-handwriting-font">The Best Coffee for you</h2>
            <h2>Cafe House</h2>
            <p class="tm-welcome-description">Cafe House offers the best coffee for your personal taste. Feeling bored and tired? Take a look at the coffees from us and start customizing your own coffee with various types of toppings today!</p>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
            <div class="inline-block shadow-img">
              <img src="images/cappuccino/cappuccino.jpg" alt="Image" class="img-circle img-thumbnail" width="168" height="168">  
            </div>              
          </div>            
        </section>          
        <section class="tm-section tm-section-margin-bottom-0 row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Popular Items</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div class="col-lg-12 tm-popular-items-container">
            <div class="tm-popular-item">
              <img src="images/americano/americano.jpg" alt="Popular" class="tm-popular-item-img" width="286" height="220">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">A</span>mericano</h3><hr class="tm-popular-item-hr">
                <p>Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee.</p>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="images/cappuccino/cappuccino.jpg" alt="Popular" class="tm-popular-item-img" width="286" height="220">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">C</span>appuccino</h3><hr class="tm-popular-item-hr">
                <p>Cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam (microfoam).</p>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="images/latte/latte.jpg" alt="Popular" class="tm-popular-item-img" width="286" height="220">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">L</span>atte</h3><hr class="tm-popular-item-hr">
                <p>Latte is a coffee drink made with espresso and steamed milk.</p>
              </div>
            </div>
          </div>          
        </section>
</asp:Content>