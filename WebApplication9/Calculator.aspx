<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebApplication9.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="jumbotron">
        <h1>Calculator</h1> 

    </div>
    <input id="txtResult" type="text" />
    <input id="btn1" type="button" value="1" onclick="calculate('1')" />
    <input id="btn2" type="button" value="2" onclick="calculate('2')"/>
    <input id="btn3" type="button" value="+" onclick="calculate('+')"/>
    <input id="btn4" type="button" value="=" onclick="displayresult()"/>


    <script>
        function calculate(result) {
            document.getElementById('txtResult').value = document.getElementById('txtResult').value + result;
        }
        function displayresult() {
            document.getElementById('txtResult').value = eval(document.getElementById('txtResult').value);
        }
    </script>


</asp:Content>
