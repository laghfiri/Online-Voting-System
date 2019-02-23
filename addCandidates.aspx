<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addCandidates.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="addCandidates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Label ID="Label2" runat="server" CssClass=" red-text"></asp:Label>
        <br />
    <div class="container">
        <div class="row input-field">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" AutoPostBack="true">
            </asp:DropDownList>
            <label>Election Title</label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=votingdatabase;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [title] FROM [elections]"></asp:SqlDataSource>
            <br />
            <h5>Election ID for this election:</h5>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <h5>ADD THE AVAILABLE CHOICES</h5>
        </div>
        
        
            <div class="row">
                <div class="input-field col s6">
                    <input id="ch1" type="text" class="validate" runat="server"  />
                    <label for="ch1"> 1st CHOICE</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="ch1" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                </div>
                    <div class="row">

                 <div class="input-field col s6">
                    <input id="ch2" type="text" class="validate" runat="server" />
                    <label for="ch2">2nd CHOICE</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="ch2" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>  </div>     
            <div class="row">
                <div class="input-field col s6">
                    <input id="ch3" type="text" class="validate" runat="server" />
                    <label for="ch3">3rd CHOICE</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="ch3" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                </div>
                    <div class="row center">

           <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" style="width:200px;" OnClick="LinkButton1_Click"><i class="material-icons">add</i></asp:LinkButton>
</div>
   </div>
    </asp:Content>