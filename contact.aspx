<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Order.contact" %>
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
                  <a id="btnDetails" runat="server" href="#main" class="tm-more-button tm-more-button-welcome">Contact Us</a>
                </div>
                <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
              </div>      
    </section>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" id="main">
        <section class="tm-section row">
          <h2 class="col-lg-12 margin-bottom-30">Send us a message</h2>
          <form action="#" method="post" class="tm-contact-form">
            <div class="col-lg-6 col-md-6">
              <div class="form-group">
                <input type="text" id="contact_name" class="form-control" placeholder="NAME" />
              </div>
              <div class="form-group">
                <input type="email" id="contact_email" class="form-control" placeholder="EMAIL" />
              </div>
              <div class="form-group">
                <input type="text" id="contact_subject" class="form-control" placeholder="SUBJECT" />
              </div>
              <div class="form-group">
                <textarea id="contact_message" class="form-control" rows="6" placeholder="MESSAGE"></textarea>
              </div>
              <div class="form-group">
                <button class="tm-more-button" type="submit" name="submit">Send message</button> 
              </div>               
            </div>
            <div class="col-lg-6 col-md-6">
              <div id="google-map">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15937.725065772864!2d101.7831425!3d2.977732!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdcb841d3762c7%3A0x4dc97330d731c530!2sNew%20Era%20University%20College!5e0!3m2!1sen!2smy!4v1595676608889!5m2!1sen!2smy" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
              </div>
            </div> 
          </form>
        </section>
      </div>
</asp:Content>
