using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FreeLancing
{
    public partial class admin : System.Web.UI.Page
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

            string usernameToSearch = txtusername.Text;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True"; ;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {

                    connection.Open();

                    string query = "SELECT username,password,fname,lname,age FROM Voter WHERE username = @Username";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Username", usernameToSearch);

                        using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            adapter.Fill(dt);

                            if (dt.Rows.Count > 0)
                            {
                                DataRow row = dt.Rows[0];
                                txtusername.Text = row["username"].ToString();
                                txtFirstName.Text = row["fname"].ToString();
                                txtlastname.Text = row["lname"].ToString();
                                txtage.Text = row["age"].ToString();
                                txtpassword.Text = row["password"].ToString();
                               

                                // Show the user data fields

                            }
                            else
                            {
                                lblMessage.Text = "No User found";
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
                    connection.Close();
                    connection.Dispose();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                if (txtage.Text ==""|| txtusername.Text ==""|| txtpassword.Text ==""|| txtFirstName.Text ==""|| txtlastname.Text == "")
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                String conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";

                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();
                    if (txtage.Text == "" || txtusername.Text == "" || txtpassword.Text == "" || txtFirstName.Text == "" || txtlastname.Text == "")
                    {
                        lblMessage.Text = "Enter all details please";
                    }
                    else
                    {
                        string q1 = "update Voter set password='" + txtpassword.Text + "',fname='" + txtFirstName.Text + "',lname='" + txtlastname.Text + "' ,age='" + txtage.Text + "'";
                        SqlCommand cmd = new SqlCommand(q1, con);
                        SqlDataReader sqr = cmd.ExecuteReader();
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Succesfull";
                        txtage.Text = txtusername.Text = txtpassword.Text = txtFirstName.Text = txtlastname.Text = "";
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
