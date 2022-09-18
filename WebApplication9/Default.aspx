<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication9._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Login Page</h1> 

    </div>

    <div class="row">
        <div class="form-group">
        <label class="control-label col-sm-2" for="email">Email:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="email" placeholder="Enter email">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="pwd">Password:</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="pwd" placeholder="Enter password">
        </div>
    </div>
     
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" onclick="return login()" class="btn btn-default">Submit</button>
            <br />
            <label id="message" class="text-danger"></label>
        </div>
    </div>
    </div>
     <script type="text/javascript">
       

        function login() {
            let uname = document.getElementById('email').value; 
            let password = document.getElementById('pwd').value;
            if (uname == 'rahul' && password == 'rahul#123') {
                window.location.href = "Success";
                return false;
            }
            else {
                document.getElementById('message').innerText = 'User Name or Password incorrect!';
                return false;
            }
        }

        </script>
</asp:Content>
