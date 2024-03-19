using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = Page.Request.FilePath;

            switch (currentPage)
            {
                case "/index.aspx":
                    homeButton.Attributes["class"] = "active";
                    break;
                case "/menu.aspx":
                    menuButton.Attributes["class"] = "active";
                    break;
                case "/contact.aspx":
                    contactButton.Attributes["class"] = "active";
                    break;
                case "/ordertest.aspx":
                    coffeeButton.Attributes["class"] = "active";
                    break;
            }

            if (Session["MemberEmail"] != null)
            {
                btnLoginSwitch.InnerHtml = "<div class='dropdown'>";
                btnLoginSwitch.InnerHtml += "<a runat='server' class='dropdown' id='displayName'>" + Session["MemberUsername"].ToString() + "</a>";
                btnLoginSwitch.InnerHtml += "<div class='dropdown-content'>";
                btnLoginSwitch.InnerHtml += "<a runat='server' href='UserProfileEdit.aspx'>Profile</a>";
                btnLoginSwitch.InnerHtml += "<a runat='server' href='UserOrderRepeater.aspx'>My Orders</a>";

                if (Session["MemberRole"].ToString() == "admin")
                {
                    btnLoginSwitch.InnerHtml += "<a runat='server' href='AdminUserOrder.aspx'>Customer's Orders</a>";
                    btnLoginSwitch.InnerHtml += "<a runat='server' href='AdminUserTable.aspx'>Member List</a>";
                }

                btnLoginSwitch.InnerHtml += "<a runat='server' href='logout.aspx'>Logout</a>";
                btnLoginSwitch.InnerHtml += "</div>";
                btnLoginSwitch.InnerHtml += "</div>";
            }
            else
            {
                btnLoginSwitch.InnerHtml = "<a id='loginButton' runat='server' href='login.aspx'>Login</a>";
                btnLoginSwitch.InnerHtml += "<a id='registerButton' runat='server' href='register.aspx'>Register</a>";
            }
        }
    }
}