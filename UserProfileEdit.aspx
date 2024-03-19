<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="UserProfileEdit.aspx.cs" Inherits="Order.UserProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="tm-section-row AlignContent">
        <div>
            <div class="col-lg-3 col-md-3 ToLeftSide">
                <div class="tm-position-relative margin-bottom-30">
                    <a id="btnEditProfile" runat="server" class="profileActive" href="UserProfileEdit.aspx">Profile</a>
                    <hr class="tm-hr">
                    <a id="btnEditPassword" runat="server" href="UserPasswordEdit.aspx">Security</a>
                </div>
            </div>
            <div id="menuContent" runat="server" class="tm-menu-product-content col-lg-9 col-md-9 form-bg-color ToRightSide"> <!-- menu content -->
                <asp:Label ID="lblEmailDisplay" runat="server" Text="Email:" CssClass="OrderLabels"></asp:Label>
                <asp:Label ID="lblEmail" runat="server" Text="" CssClass="OrderDetails"></asp:Label>

                <br />
                <br />

                <asp:Label ID="lblUsernameDisplay" runat="server" Text="Username:" CssClass="OrderLabels"></asp:Label>
                <asp:TextBox ID="txtboxUsername" runat="server" CssClass="inputs"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqUsername" runat="server" ErrorMessage="Please fill in a username." ControlToValidate="txtboxUsername" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regExpUsername" runat="server" ControlToValidate="txtboxUsername" ErrorMessage="Username character must be more than 2" ValidationExpression=".{3}.*" EnableClientScript="False" ForeColor="Red" />
                <asp:CustomValidator ID="customUsername" runat="server" ErrorMessage="This username has been taken" ForeColor="Red" EnableClientScript="false" ControlToValidate="txtboxUsername" OnServerValidate="customUsername_ServerValidate"></asp:CustomValidator>

                <br />

                <asp:Label ID="lblName" runat="server" Text="Full Name" CssClass="OrderLabels"></asp:Label>
                <asp:TextBox ID="txtboxName" runat="server" CssClass="inputs"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="Please fill in a name." ControlToValidate="txtboxName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <asp:Label ID="lblPhone" runat="server" Text="Phone:" CssClass="OrderLabels"></asp:Label>
                <asp:TextBox ID="txtboxPhone" runat="server"  CssClass="inputs"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPhone" runat="server" ErrorMessage="Please fill in a phone number." ControlToValidate="txtboxPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <asp:Button ID="submitSave" runat="server" Text="Save" OnClick="submitSave_Click" CssClass="submitDiscord"/>

                <br />

                <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </section>
</asp:Content>