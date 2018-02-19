using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PranuProject
{
    public partial class TestPage : System.Web.UI.Page
    {
        int tickets = 20;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // int totalCost = Convert.ToInt32(TextBox1.Text) * tickets;
          //  Label1.Text = totalCost.ToString();

            Label1.Text = Calendar1.SelectedDate.Date.ToString();
        }
    }
}