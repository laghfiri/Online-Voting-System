using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class images_Register : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();


        string insert = "insert into Voters values(@num,@name,@email,@gender,@adr,@mobile,@birthdate,@major,@grade,@password)";

        SqlCommand cd = new SqlCommand(insert, con);
        cd.Parameters.AddWithValue("@num",num.Value);
        cd.Parameters.AddWithValue("@name", name.Value);
        cd.Parameters.AddWithValue("@email",email.Value);
        cd.Parameters.AddWithValue("@gender",gender.SelectedValue);
        cd.Parameters.AddWithValue("@adr", state.Value);
        cd.Parameters.AddWithValue("@mobile", mobile.Value);
        cd.Parameters.AddWithValue("@birthdate", birthdate.Value);
        cd.Parameters.AddWithValue("@major", DropDownList1.SelectedValue);
        cd.Parameters.AddWithValue("@grade",DropDownList2.SelectedValue);
        cd.Parameters.AddWithValue("@password", pass.Value);


        try {
            cd.ExecuteNonQuery();
        }
        catch(SqlException sdfe)
        {
            Response.Write("Error");
        }
        con.Close();
        
        Response.Redirect("admin.aspx?uid=" + num.Value);
    }
}