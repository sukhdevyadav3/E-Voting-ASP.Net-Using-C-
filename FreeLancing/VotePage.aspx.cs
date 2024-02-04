using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace FreeLancing
{
    public partial class VotePage : System.Web.UI.Page
    {
        String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sonuyadav07\source\repos\FreeLancing\FreeLancing\App_Data\Database1.mdf;Integrated Security=True";
        string username = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Session["username"] as string;
            HiddenUsername.Text = uname;
            if (!IsPostBack)
                {
                    // Register GridView1 for event validation
                    ClientScript.RegisterForEventValidation(GridView1.UniqueID);
                }
            


        }



        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            int selectedIndex = GridView1.SelectedIndex;
            if (selectedIndex >= 0)
            {
                // Retrieving the selected user ID
                
                GridViewRow selectedRow = GridView1.Rows[selectedIndex];
                // Use the retrieved user ID as needed
                // Example: Display the user ID in a label

                foreach (GridViewRow row in GridView1.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        lblusername.Text = selectedRow.Cells[1].Text;  // Assuming the username is in the first cell (change index if needed)
                       // Assuming the party name is in the second cell (change index if needed)
                        lblfname.Text = selectedRow.Cells[2].Text; // Assuming the first name is in the third cell
                        // Assuming the password is in the second cell (change index if needed)

                        bigButton.Visible = true;
                      
                    }
                    else
                    {
                        row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                        row.ToolTip = "Click to select this row.";
                    }

                    using (SqlConnection connection = new SqlConnection(ConnectionString))
                    {

                        connection.Open();

                        SqlCommand cmd = new SqlCommand("SELECT photo FROM Candidate WHERE username = @UserID", connection);
                        cmd.Parameters.AddWithValue("@UserID", lblusername.Text);

                        SqlDataReader dr = cmd.ExecuteReader();

                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                byte[] imageData = (byte[])dr["photo"];
                                string base64String = Convert.ToBase64String(imageData);
                                string imgSrc = $"data:image/jpeg;base64,{base64String}";

                                // Assuming Image1 is your Image control ID
                                Image1.ImageUrl = imgSrc;
                            }
                        }
                        else
                        {
                            // Handle case where no image is found for the selected user
                            // For example, set a default image or display a message
                            Image1.ImageUrl = "path_to_default_image.jpg"; // Set a default image path
                        }

                        dr.Close();



                    }
                }

            }

        }

       

        public void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";

            }
        }

        protected void bigButton_Click(object sender, EventArgs e)
        {
            
            try
            {


                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();
                    int nextID = 0;
                   
                    int result1 = 0;
                    string query = "SELECT * FROM voted1 WHERE username='" + HiddenUsername.Text + "'";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader d0 = command.ExecuteReader();
                   
                    int i = 0;
                    while (d0.Read())
                    {
                        i = i +1;
                    }
                    d0.Close();
                    if(i>0)
                    {
                        Response.Write("Already Voted");
                    }
                    else
                   
                    {

                        // No value retrieved from the database
                        // Handle the case where there's no data

                        query = "insert into voted1 (username,fname) values('"+HiddenUsername.Text+"','"+lblfname.Text.Trim()+"')";
                       command = new SqlCommand(query, connection);
                        

                       
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Response.Write("Interset into Voted1");
                            // Update successful
                            // Handle success if needed




                            query = "SELECT ISNULL(MAX(votecount), 0) + 1 AS NextID FROM Vote_Count"; // Modify query as per your table name

                            command = new SqlCommand(query, connection);
                            object result = command.ExecuteScalar();
                            if (result != null && result != DBNull.Value)
                            {
                                nextID = Convert.ToInt32(result);
                            }

                            query = "select * from Vote_Count where candidate_username='" + lblusername.Text + "'";
                            command = new SqlCommand(query, connection);
                            SqlDataReader dr = command.ExecuteReader();



                            int c = 0;
                            while (dr.Read())
                            {
                                c = c + 1;

                            }
                            dr.Close();
                            if (c > 0)
                            {
                               

                                query = @"UPDATE Vote_Count
                         SET votecount = CASE 
                                            WHEN votecount IS NULL THEN 1 
                                            ELSE ISNULL(votecount, 0) + 1 
                                        END 
                         WHERE candidate_username = @Username";
                                command = new SqlCommand(query, connection);
                                command.Parameters.AddWithValue("@Username", lblusername.Text);


                                int rowsAffected1 = command.ExecuteNonQuery();

                                if (rowsAffected1 > 0)
                                {
                                    // Count incremented successfully
                                    Response.Write("Vote has been casted: " + username);
                                }
                                else
                                {
                                    // Handle case where the username doesn't exist in the table
                                    Response.Write("Username not found in the database.");
                                }
                            }
                            else
                            {
                                int id = 1;
                                query = "Insert into Vote_Count (candidate_username,votecount,fname,party) values ('" + lblusername.Text + "','" + id + "','" + lblfname.Text + "','" + lblparty.Text + "')"; // Modify query as per your table name

                                command = new SqlCommand(query, connection);
                                command.ExecuteNonQuery();
                                Response.Write("Successfully");
                            }
                        }
                        else
                        {
                            Response.Write("Didnt updated the voted");
                        }

                    }
                
                    
              
                }
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.Message);
            }
            

        }
    }
}
        
   
