<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"  MasterPageFile="~/Site.Master" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br/><br/><br/><br/>
               
                <div class="row center">
                    <br /><h2 class="header center white-text" style="font-style:oblique;font-weight:600"> Online Voting System for ENSAJ</h2>
                </div>
                
                <br/><br/>

            </div>
        </div>
        <div class="parallax"><img src="images/ENSAJ.jpg" alt="Unsplashed background img 1" /></div>
    </div>
<br /><br />
    <div class="row center">
                    <asp:Label ID="Label1" runat="server" Text="Label" style="color:red;" ></asp:Label>
                   
                </div>
        
            <div class="row">
                <div class="col s4 offset-s4 input-field">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="username" type="text" class="validate" runat="server" />
                    <label for="username">Username</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="username" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                <div class="col s4 offset-s4 offset-s4 input-field">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="password" type="password" class="validate" runat="server" />
                    <label for="password">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="password" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row center">
                <div class="col s4 offset-s4">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click">LOGIN</asp:LinkButton>
                </div>
            </div>
        </asp:Content>
