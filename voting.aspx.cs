using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class voting : System.Web.UI.Page
{
    SqlConnection con;
    int election_id;
    string title;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            election_id = Convert.ToInt32(Request.QueryString["id"]);
            title = Request.QueryString["title"].ToString();
        }
        Label1.Text = "";
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();
        string c = "select * from choices where eid='" + election_id + "'";

        SqlCommand cmd = new SqlCommand(c, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            Label1.Text = dr.GetString(2);
            Label4.Text = dr.GetString(1);
            Label2.Text = dr.GetString(3);
            Label3.Text = dr.GetString(4);

        }

        else
        {
        }

        con.Close();


    }
    protected void vote_Click1(object sender, EventArgs e)
    {
        con.Open();
        string command = "IF NOT EXISTS  (select eid from votes where eid=@eid and voter=@voter) insert into votes values (@eid,@title,@choice,@voter);";
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@eid", election_id);
        cmd.Parameters.AddWithValue("@title", Label4.Text);
        cmd.Parameters.AddWithValue("@choice", Label1.Text);
        cmd.Parameters.AddWithValue("@voter", Context.User.Identity.Name);

        int rowsAffected = cmd.ExecuteNonQuery();
        if (rowsAffected == -1)
        {
            Label1.Text = "Already voted!";

        }
        else
        {
            Label5.Text = "THANK YOU FOR YOUR CONTRIBUTION";
        }
    }

    protected void vote_Click2(object sender, EventArgs e)
    {
        con.Open();

        string command = "IF NOT EXISTS  (select eid from votes where eid=@eid and voter=@voter) insert into votes values (@eid,@title,@choice,@voter);";
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@eid", election_id);
        cmd.Parameters.AddWithValue("@title", Label4.Text);
        cmd.Parameters.AddWithValue("@choice", Label2.Text);
        cmd.Parameters.AddWithValue("@voter", Context.User.Identity.Name);

        int rowsAffected = cmd.ExecuteNonQuery();
        if (rowsAffected == -1)
        {
            Label2.Text = "Already voted!";

        }
        else
        {
            Label5.Text = "THANK YOU FOR YOUR CONTRIBUTION";
        }
    }
    protected void vote_Click3(object sender, EventArgs e)
    {
        con.Open();

        string command = "IF NOT EXISTS  (select eid from votes where eid=@eid and voter=@voter) insert into votes values (@eid,@title,@choice,@voter);";
        SqlCommand cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@eid", election_id);
        cmd.Parameters.AddWithValue("@title", Label4.Text);
        cmd.Parameters.AddWithValue("@choice", Label3.Text);
        cmd.Parameters.AddWithValue("@voter", Context.User.Identity.Name);

        int rowsAffected = cmd.ExecuteNonQuery();
        if(rowsAffected==-1)
        {
            Label3.Text = "Already voted!";

        }
        else
        {
            Label5.Text = "THANK YOU FOR YOUR CONTRIBUTION";
        }

    }
}