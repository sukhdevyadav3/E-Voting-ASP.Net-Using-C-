using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace FreeLancing
{
    public partial class Signup : System.Web.UI.Page
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


                if (txtpassword.Text != txtconfirmpassword.Text)
                {
                    lblMessage.Text = "passowrd and confirm password not matched";
                }
                else if (txtage.Text == "" || txtusername.Text == "" || txtpassword.Text == "" || txtFirstName.Text == "" || txtlastname.Text == "")
                {
                    lblMessage.Text = "Enter all details";
                }

                else
                {
                    con.Open();
                    if (txtage.Text == "" || txtusername.Text == "" || txtpassword.Text == "" || txtFirstName.Text == "" || txtlastname.Text == "")
                    {
                        lblMessage.Text = "Enter all details please";
                    }
                    else
                    {

                        cmd = new SqlCommand("select * from Voter where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
                        dr = cmd.ExecuteReader();
                        int count = 0;
                        while (dr.Read())
                        {
                            ++count;

                        }
                        dr.Close();
                        if (count > 0)
                        {
                            lblMessage.Text = "try different username, this exist";


                        }

                        else
                        {
                            cmd = new SqlCommand("insert into Voter (fname, lname, age, username, password) values (@fname, @lname, @age, @username, @password)", con);
                            cmd.Parameters.AddWithValue("@fname", txtFirstName.Text);
                            cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
                            cmd.Parameters.AddWithValue("@age", txtage.Text);
                            cmd.Parameters.AddWithValue("@username", txtusername.Text);
                            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                            dr = cmd.ExecuteReader();
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Successfull";
                            txtage.Text = txtusername.Text = txtpassword.Text = txtFirstName.Text = txtlastname.Text = "";
                        }
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