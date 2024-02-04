using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace FreeLancing
{
    public partial class log : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            String conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
            con = new SqlConnection(conn);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (RadioVoter.Checked == true)
                {
                    con.Open();
                    cmd = new SqlCommand("select * from Voter where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    int count = 0;
                    while (dr.Read())
                    {
                        ++count;

                    }
                    if (count > 0)
                    {
                      
                        lblMessage.Text = "Successfull";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        string username = txtusername.Text.ToString(); ; // Variable you want to pass
                        Session["username"] = username;
                        Response.Redirect("VotePage.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Wrong Username or Password";
                    }
                }
                else if(RadioCandidate.Checked==true)
                {
                    con.Open();
                    cmd = new SqlCommand("select * from Candidate where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    int count = 0;
                    while (dr.Read())
                    {
                        ++count;

                    }
                    if (count > 0)
                    {
                        string username = txtusername.Text.ToString(); ; // Variable you want to pass
                        Session["username"] = username;
                        Response.Redirect("Search.aspx");
                      
                        lblMessage.Text = "Successfull";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        lblMessage.Text = "Wrong Username or Password";
                    }
                }
              else
                {
                    con.Open();
                    cmd = new SqlCommand("select * from admin where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    int count = 0;
                    while (dr.Read())
                    {
                        count=count+1;
                        

                    }
                    Response.Write("" + count + " yeh aa rhi h");
                    
                    if (count > 0)
                    {
                        string username = txtusername.Text.ToString(); // Variable you want to pass
                        Session["username"] = username;
                        Response.Redirect("admin.aspx");
                        lblMessage.Text = "Successfull";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        lblMessage.Text = "Wrong Username or Password";
                    }
                }
               
            }
            catch (Exception ex)
            {
                lblMessage.Text = "" + ex.Message;
            }
            finally
            {
                con.Close();
                con.Dispose();

            }
        }
    }
}