 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="addElections.aspx.cs"  MasterPageFile="~/Site1.Master"  Inherits="addElections" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <br />
        <h4><strong>ADD ELECTION</strong></h4>
            <asp:Label ID="Label1" runat="server" CssClass="red-text"></asp:Label>

        <br />
            <div class="row">
                <div class="col s6 input-field">
                    <input id="title" type="text" class="validate" runat="server" />
                    <label for="title">Title</label>
                </div>
                </div>
                            <div class="row">

                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="description" type="text" class="validate" runat="server"/>
                    <label for="description">Description</label>
                </div>
                                </div>
                            <div class="row">
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="startdate" runat="server" />
                    <label for="startdate">StartDate</label>
                </div>
                      <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="time"  id="starttime" runat="server"/>
                    <label for="starttime"></label>
                </div>
                                </div>
                            <div class="row">
               
                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" id="enddate" runat="server" />
                    <label for="enddate">EndDate</label>
                </div>
                                <div class="input-field col s3">
                    <i class="material-icons prefix">today</i>
                    <input type="time"  id="endtime" runat="server" />
                    <label for="endtime"></label>
                </div>
           </div>   
           
            <div class="row">
                <asp:LinkButton ID="LinkButton1" runat="server" style="position:absolute;margin-left:10%;" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click">Add ELection</asp:LinkButton>
            </div>   
    </div>
    
</asp:Content>