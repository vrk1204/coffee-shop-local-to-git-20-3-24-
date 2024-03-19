<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="AdminUserTable.aspx.cs" Inherits="Order.AdminUserTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="TableBackground">
        <h2 class="h2-font SetToCenter">Member List</h2>

        <table border="1" class="TableCss">
            <tr>
                <th>Member ID</th>
                <th>Member Username</th>
                <th>Member Email</th>
                <th>Member Password</th>
                <th>Member Role</th>
                <th>Member Name</th>
                <th>Member Phone</th>
                <th></th>
            </tr>

            <asp:Repeater ID="MemberTableRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("MemberId") %></td>
                        <td><%# Eval("MemberUsername") %></td>
                        <td><%# Eval("MemberEmail") %></td>
                        <td><%# Eval("MemberPassword") %></td>
                        <td><%# Eval("MemberRole") %></td>
                        <td><%# Eval("MemberName") %></td>
                        <td><%# Eval("MemberPhone") %></td>
                        <td>
                            <asp:LinkButton ID="UserEditLinkBtn" runat="server" CommandArgument='<%# Eval("MemberId") %>' OnClick="UserEditLinkBtn_Click">Edit</asp:LinkButton>
                            <asp:LinkButton ID="UserDeleteLinkBtn" runat="server" CommandArgument='<%# Eval("MemberId") %>' OnClick="UserDeleteLinkBtn_Click">Delete</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
