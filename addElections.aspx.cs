using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addElections : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string one = startdate.Value;
        string two = starttime.Value;
        DateTime dt1 = Convert.ToDateTime(one + " " + two);

        one = enddate.Value;
        two = endtime.Value;
        DateTime dt2 = Convert.ToDateTime(one + " " + two);





        string command = "insert into elections values(@title,@start,@end,@desc)";
  
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@title",title.Value);
        cmd.Parameters.AddWithValue("@start", dt1);
        cmd.Parameters.AddWithValue("@end",dt2);
        cmd.Parameters.AddWithValue("@desc", description.Value);

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch(SqlException exre)
        {
            Label1.Text = "Error";
        }
        con.Close();
        Response.Redirect("editElections.aspx");
    }
}