using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace FreeLancing
{
    public partial class Login1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        
            protected void Page_Load(object sender, EventArgs e)
            {
                String conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
                con = new SqlConnection(conn);


            }

            public void clear()
            {
                txtPassword.Text = txtUsername.Text = "";
            }
            protected void btnLogin_Click(object sender, EventArgs e)
            {

                try
                {
                    con.Open();
                    cmd = new SqlCommand("select * from Voter where username='" + txtUsername.Text + "' and password='" + txtPassword.Text + "'", con);
                    dr = cmd.ExecuteReader();
                    int count = 0;
                    while (dr.Read())
                    {
                        ++count;

                    }
                    if (count > 0)
                    {
                    Response.Redirect("admin.aspx");
                        lblMessage.Text = "Successfull";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        lblMessage.Text = "Wrong Username or Password";
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

