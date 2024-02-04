using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace FreeLancing
{
    public partial class CandidateRegister : System.Web.UI.Page
    {
        String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
        SqlDataReader dr;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
         
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();
                    if (txtpassword.Text != txtcpassword.Text)
                    {
                        lblMessage.Text = "passowrd and confirm password not matched";
                    }
                    else if (txtemail.Text == "" || txtpassword.Text == "" || txtname.Text == "")
                    {
                        lblMessage.Text = "Enter all details";
                    }
                    else if (RadioCandidate.Checked == true)
                    {

                        cmd = new SqlCommand("select * from Candidate where username='" + txtemail.Text + "' and password='" + txtpassword.Text + "'", connection);
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

                            byte[] imageData;
                            using (Stream fs = fileUpload.PostedFile.InputStream)
                            {
                                using (BinaryReader br = new BinaryReader(fs))
                                {
                                    imageData = br.ReadBytes((int)fs.Length);
                                }
                            }

                            // Save the image data to the database
                            string connectionString = ConnectionString; // Replace with your connection string

                            SqlCommand cmd = new SqlCommand("INSERT INTO Candidate (photo,username,fname,password) VALUES (@ImageData,@username,@fname,@password )", connection);
                            cmd.Parameters.AddWithValue("@ImageData", imageData);
                            cmd.Parameters.AddWithValue("@username", txtemail.Text);
                            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                            cmd.Parameters.AddWithValue("@fname", txtname.Text);



                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblMessage.ForeColor = System.Drawing.Color.Green;
                                lblMessage.Text = "Successfull";
                            }
                            else
                            {
                                lblMessage.Text = "failed!";
                            }
                        }
                    }


                    else if (RadioVoter.Checked == true)
                    {
                        string s = "select * from Voter where username='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
                        cmd = new SqlCommand(s, connection);
                        SqlDataReader dr1 = cmd.ExecuteReader();
                        int c = 0;
                        while(dr1.Read())
                        {
                            ++c;
                        }
                        dr1.Close();
                       if(c==0)
                        {
                            cmd = new SqlCommand("insert into Voter (fname, username, password) values (@fname, @username, @password)", connection);
                            cmd.Parameters.AddWithValue("@fname", txtname.Text);
                            cmd.Parameters.AddWithValue("@username", txtemail.Text);
                            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                            dr = cmd.ExecuteReader();
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Successfull";
                            txtemail.Text = txtpassword.Text = txtname.Text = "";
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Try different username";
                        }
                    }

                }
                
                
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}