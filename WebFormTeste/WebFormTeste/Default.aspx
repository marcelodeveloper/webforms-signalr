<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormTeste._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/jquery.signalR-2.4.0.min.js"></script>
    <script src="/signalr/hubs"></script>
   

    <script type="text/javascript">
        $(function () {
            var logger = $.connection.logHub;
            logger.client.logMessage = function (msg) {
                $("#logUl").append("<li>" + msg + "</li>");
            }

            $.connection.hub.start();
        })

    </script>



    <h3>Log Items</h3>
    <asp:ListView ID="logListView" runat="server" ItemPlaceholderID="itemPlaceHolder" ClientIDMode="Static" EnableViewState="false">
        <LayoutTemplate>
            <ul id="logUl">
                <li runat="server" id="itemPlaceHolder"></li>
            </ul>
        </LayoutTemplate>
        <ItemTemplate>
             <li>
                 <span class="logItem">
                     <%# Container.DataItem.ToString() %>

                 </span>
                 
                 <li/>
        </ItemTemplate> 
    </asp:ListView>

   <%-- <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

</asp:Content>
