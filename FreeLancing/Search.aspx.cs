using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;

namespace FreeLancing
{
    public partial class Search : System.Web.UI.Page
    {
        String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            byte[] imageData = null;
            if (!IsPostBack)
            {

                string uname = Session["username"] as string;
                HiddenUsername.Text = uname;
                Response.Write("" + HiddenUsername.Text);
                // Replace this with the specific username
                string query = "SELECT * FROM Candidate WHERE username = @Username";

                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", uname);
                        connection.Open();

                        // Execute the query and retrieve the image data
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Check if the field contains data
                                if (!reader.IsDBNull(0))
                                {
                                    // Get the image data as a byte array
                                    imageData = (byte[])reader["photo"];
                                    lblName.Text = (string)reader["fname"];
                                    lblemail.Text = (string)reader["username"];
                                }
                            }
                        }
                    }

                                        // Retrieve image data for the specific user

                    if (imageData != null && imageData.Length > 0)
                    {
                        string base64String = Convert.ToBase64String(imageData);
                        Image1.ImageUrl = "data:image/jpg;base64," + base64String;
                    }
                }
            }
        }

        protected void btnResult_Click(object sender, EventArgs e)
        {
            Response.Redirect("Graph.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("log.aspx");
        }
    }
}