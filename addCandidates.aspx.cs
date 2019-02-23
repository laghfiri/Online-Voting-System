using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addCandidates : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
        if(Page.IsPostBack)
        {
            string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
            con = new SqlConnection(str);
            con.Open();

            string c = "select id from elections where title='"+DropDownList1.SelectedValue+"'";
            SqlCommand cmd = new SqlCommand(c, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Label1.Text = Convert.ToString(dr.GetInt32(0));
            }
            else
            {
                Label1.Text = "";
            }

            con.Close();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string c = "select id from elections where title='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(c, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read() == true)
        {
            Label1.Text = Convert.ToString(dr.GetInt32(0));
        }
        else
        {
            Label1.Text = "";
        }
        con.Close();
        con.Open();
        string command = "insert into choices values (@eid,@ename,@choice1,@choice2,@choice3)";
SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@eid", Convert.ToInt32(Label1.Text));
        cmd.Parameters.AddWithValue("@ename", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@choice1", ch1.Value);
        cmd.Parameters.AddWithValue("@choice2", ch2.Value);
        cmd.Parameters.AddWithValue("@choice3", ch3.Value);

        try
        {
            cmd.ExecuteNonQuery();
            Response.Redirect("admin.aspx");
        }
        catch(SqlException rsde)
        {
            Label2.Text = "Error";
        }
        con.Close();

       
    }
   
}