<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterProfessor.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="RegisterProfessor"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <br/><br/>
                <br/><br/>
            </div>
        </div>
        <div class="parallax"><img src="images/vote.jpg" alt="Unsplashed background img 1" /></div>
       
    </div>


    <div class="container">
        
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="name" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="name"> Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="name" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>

                 <div class="input-field col s6">
                    <i class="material-icons prefix">email</i>
                    <input id="email" type="email" class="validate" runat="server" />
                    <label for="email">Email</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="email" CssClass="red-text"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Not a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" CssClass="red-text"></asp:RegularExpressionValidator>
                </div>       
            <div class="row">
                 <div class="input-field col s6">
                    <i class="material-icons prefix">perm_identity</i>
                    <input id="number" type="text" class="validate" runat="server" maxlength="15" />
                    <label for="number">Identity Number</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="number" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                
                <div class="row center input-field col s6">
 
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="m" Selected="True"><i class="material-icons left">wc</i>Male</asp:ListItem>
                            <asp:ListItem Value="f"><i class="material-icons left">wc</i>Female</asp:ListItem>
                        </asp:RadioButtonList>  
                </div>
                </div>
                <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">location_on</i>
                    <input id="state" type="text" class="validate" runat="server" maxlength="30"/>
                    <label for="state">Adress</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="state" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
           
                <div class="input-field col s6">
                    <i class="material-icons prefix">phone</i>
                    <input id="mobile" type="text" class="validate" runat="server" maxlength="10"  title="mob"/>
                    <label for="mobile">Mobile</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="mobile" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                    </div>  
                <div class="input-field col s6">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="birthdate" runat="server"/>
                    <label for="birthdate">Birthdate</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cannot be empty!" ControlToValidate="birthdate" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
                 <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="TRI" Value="tri"></asp:ListItem>
                        <asp:ListItem Text="STIN" Value="ma2"></asp:ListItem>
                        
                      
                     
                    </asp:DropDownList>
                                            <label>Department</label>

                </div>
             </div>  
            <div class="row">
               
                <div class="input-field col s6">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="phD" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Dr-Ing Grade" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Assistant " Value="3"></asp:ListItem>

                    </asp:DropDownList>
                    <label>GRADE</label>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="pass" type="password" class="validate" runat="server"/>
                    <label for="pass">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password is required." ControlToValidate="pass" CssClass="red-text"></asp:RequiredFieldValidator>
                </div>
            </div>
           
                
           
            
            <br />
            <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 "  style="background-color:lightskyblue;width:300px;" OnClick="LinkButton1_Click"><i class="material-icons left" >person_add</i>Submit</asp:LinkButton>
            </div>  
        </div>       
</asp:Content>