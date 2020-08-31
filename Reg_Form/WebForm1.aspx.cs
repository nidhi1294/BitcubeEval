using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;



namespace Reg_Form
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        String connectionString = @"Data Source=DESKTOP-5RK2URH;Initial Catalog=Registration; Integrated Security=True ";

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {   
                Clear();
            }
        }

        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Label7.Text = "Password encrypted and saved sucessfully";
            {
                TextBox5.Text = EncodePasswordToBase64(TextBox5.Text);
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        
        
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == ""
                || TextBox5.Text =="")
                Label6.Text = "*Please fill in required Fields";
            


            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))

                {

                   
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("FirstName", TextBox1.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("LastName", TextBox2.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("EmailAddress", TextBox3.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("Password", TextBox4.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("ConfirmPassword", TextBox5.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Label1.Text = "You Have Successfully Registered";
                }
                }

            




        }
        void Clear()
        {
            TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = ""; TextBox4.Text = "";
            hfUserID.Value = ""; TextBox5.Text = "";
            Label1.Text = Label6.Text = "";

        }


        
    }
    }

    


        
            

      
