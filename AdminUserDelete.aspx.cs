﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class AdminUserDelete : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["MemberRole"].ToString() == "user")
                {
                    Response.Redirect("Error404.aspx");
                }
            }
        }

        protected void submitUserDelete_Click(object sender, EventArgs e)
        {
            setMemberId();

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string deleteUserQuery = "DELETE FROM Members WHERE MemberId='" + id + "'";
            SqlCommand cmdDeleteUser = new SqlCommand(deleteUserQuery, con);

            int delete = 0;
            try
            {
                delete = cmdDeleteUser.ExecuteNonQuery();

                //check if record was successfully inserted
                if (delete > 0)
                {
                    outputAdminUserDelete.InnerHtml = "<label>This user has been deleted.</label> <br />";
                    outputAdminUserDelete.InnerHtml += "<a href='AdminUserTable.aspx'>Back to Member List</a>";
                }
                else
                {
                    userDeleteErrorMsg.Text = "User delete unsuccessful, please try again later.";
                }
            }
            catch (Exception err)
            {
                userDeleteErrorMsg.Text = "Delete Error <br /> " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        private void setMemberId()
        {
            string memberId = Global.MemberId;
            id = Int16.Parse(memberId);
        }
    }
}