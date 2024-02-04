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
    public partial class ImageUploadf : System.Web.UI.Page
    {
        String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnUpload_Click(object sender, EventArgs e)
        {

            try
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
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("INSERT INTO Candidate (photo,username) VALUES (@ImageData,@username)", connection);
                    command.Parameters.AddWithValue("@ImageData", imageData);
                    command.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Image uploaded successfully!";
                    }
                    else
                    {
                        lblMessage.Text = "Image upload failed!";
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
    
