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
    public partial class register : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] != null)
            {
                Response.Redirect("Logout.aspx");
            }
        }

        protected void submitReg_Click(object sender, EventArgs e)
        {
            Encryption pwEncryption = new Encryption();

            string username = regUsername.Text;
            string email = regEmail.Text;
            string password = regPassword.Text;
            string name = regName.Text;
            string phone = regPhone.Text;

            //validation passed
            if (reqRegUsername.IsValid &&
                regRegUsername.IsValid &&
                reqRegEmail.IsValid &&
                reqRegPassword.IsValid &&
                regRegPassword.IsValid &&
                reqRegConfirmPassword.IsValid &&
                compareRegConfirmPassword.IsValid &&
                reqRegName.IsValid &&
                reqRegPhone.IsValid)
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                string checkEmailExist = "select count(*) from Members where MemberEmail='" + email + "'";
                SqlCommand cmdCheckEmail = new SqlCommand(checkEmailExist, con);
                int emailExist = Convert.ToInt32(cmdCheckEmail.ExecuteScalar().ToString());

                string checkUsernameExist = "select count(*) from Members where MemberUsername='" + username + "'";
                SqlCommand cmdCheckUsername = new SqlCommand(checkUsernameExist, con);
                int usernameExist = Convert.ToInt32(cmdCheckUsername.ExecuteScalar().ToString());

                //if username and email doesn't exist
                if (emailExist != 1 && usernameExist != 1)
                {
                    string role = "user";

                    //insert query
                    string insertSQL;
                    insertSQL = "INSERT INTO Members (MemberName, MemberPhone, MemberEmail, MemberPassword, MemberRole, MemberUsername)";
                    insertSQL += "VALUES ('";
                    insertSQL += name + "', '";
                    insertSQL += phone + "', '";
                    insertSQL += email.ToLower() + "', '";
                    insertSQL += pwEncryption.Encrypt(password) + "', '";
                    insertSQL += role + "', '";
                    insertSQL += username.ToLower() + "')";

                    SqlCommand cmdInsertSQL = new SqlCommand(insertSQL, con);

                    int added = 0;
                    try
                    {
                        added = cmdInsertSQL.ExecuteNonQuery();

                        //check if record was successfully inserted
                        if (added > 0)
                        {
                            string MemberIdQuery = "select MemberId from Members where MemberUsername='" + username + "'";
                            SqlCommand cmdMemberId = new SqlCommand(MemberIdQuery, con);
                            string MemberId = cmdMemberId.ExecuteScalar().ToString();

                            Session["MemberEmail"] = email;
                            Session["MemberId"] = MemberId.ToString();
                            Session["MemberUsername"] = username;
                            Session["MemberRole"] = role;
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            regErrorMsg.Text = "Registration unsuccessful, please try again later.";
                        }
                    }
                    catch (Exception err)
                    {
                        regErrorMsg.Text = "Registration Error <br /> " + err.Message;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
                else
                {
                    switch (emailExist)
                    {
                        case 1:
                            {
                                regErrorEmail.Text = "This email was used by someone else.";
                                break;
                            }
                        default:
                            {
                                regErrorEmail.Text = "";
                                break;
                            }
                    }
                    switch (usernameExist)
                    {
                        case 1:
                            {
                                regErrorUsername.Text = "This username was used by someone else.";
                                break;
                            }
                        default:
                            {
                                regErrorUsername.Text = "";
                                break;
                            }
                    }
                }
            }
            else
            {
                clearErrorMsg();
            }
        }

        private void clearErrorMsg()
        {
            regErrorUsername.Text = "";
            regErrorEmail.Text = "";
            regErrorMsg.Text = "";
        }
    }
}