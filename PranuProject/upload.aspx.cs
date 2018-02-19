using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PranuProject
{
    public partial class upload : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            //int newCount = Convert.ToInt32(ViewState["count"]);
            //ViewState["count"] = (newCount+1).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "" && FileUpload1.PostedFile.ContentType=="Image\\jpeg")
            {
                String Image_Name_txt = FileUpload1.PostedFile.FileName;
                byte[] n_Image_Size = new byte[FileUpload1.PostedFile.ContentLength];
                HttpPostedFile Posted_Image = FileUpload1.PostedFile;
                Posted_Image.InputStream.Read(n_Image_Size, 0, (int)FileUpload1.PostedFile.ContentLength);

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString);

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO Images(Name,MyData,Size,Type)" +
                                  " VALUES (@Image_Name,@Image_Content,@Image_Size,@Image_Type)";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;

                SqlParameter Image_Name = new SqlParameter("@Image_Name", SqlDbType.VarChar, 500);
                Image_Name.Value = Image_Name_txt;
                cmd.Parameters.Add(Image_Name);

                SqlParameter Image_Content = new SqlParameter("@Image_Content", SqlDbType.Image, n_Image_Size.Length);
                Image_Content.Value = n_Image_Size;
                cmd.Parameters.Add(Image_Content);

                SqlParameter Image_Size = new SqlParameter("@Image_Size", SqlDbType.BigInt, 99999);
                Image_Size.Value = FileUpload1.PostedFile.ContentLength;
                cmd.Parameters.Add(Image_Size);

                SqlParameter Image_Type = new SqlParameter("@Image_Type", SqlDbType.VarChar, 500);
                Image_Type.Value = FileUpload1.PostedFile.ContentType;
                cmd.Parameters.Add(Image_Type);


                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                
            }
        }

        
    }
}
