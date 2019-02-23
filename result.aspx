<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>ENSAJ</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <style>
         .abc{
            background-color:dimgrey;
        }
    </style>
</head>
<body>
    <form runat="server">
    <!--Nav bar-->
        <nav class="abc" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="Default.aspx" class="brand-logo"></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="Elections.aspx">ELECTIONS</a></li>
                    <li style="text-transform:uppercase;">
                        <asp:LoginName ID="LoginName1" runat="server" />
                    </li>
                    <li style="text-transform:uppercase;">
                        <asp:LoginStatus ID="LoginStatus1" runat="server"/>
                    </li>
                </ul>

               
            </div>
        </nav>
   
        <div class="container">
            
            <h4>Results</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="choice" HeaderText="CHOICES" SortExpression="choice" />
                    <asp:BoundField  DataField="number_of_votes" HeaderText="Total Number of Votes" ReadOnly="True" SortExpression="number_of_votes" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#696969" Font-Bold="True" ForeColor="white" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F5F5DC" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=votingdatabase;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT choice ,COUNT(voter) AS number_of_votes FROM votes where eid=@eid Group By choice">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
    </form>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
</body>
</html>
