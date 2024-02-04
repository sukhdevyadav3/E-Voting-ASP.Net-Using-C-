<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="FreeLancing.Graph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Custom styles */
        .logo-img {
            max-width: 100px; /* Adjust image size as needed */
            height: auto;
            margin-right: 10px; /* Adjust margin as needed */
        }

        .result-heading {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    
                    Online Voting
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Search.aspx">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin.aspx">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="log.aspx">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
        <!-- Result heading -->
        <h1 class="result-heading mt-4">Result</h1>


        <div class="container mt-4">
            <div class="row">
                <div class="col-md-3">
                    <!-- Online Voting image -->
                    <img src="pic\onine_voting_image.jpg" alt="Online Voting" class="img-fluid" style="width: 205%;" />
                </div>
                <div class="col-md-9">
        <div class="auto-style1">
            <asp:Chart ID="VoteChart" runat="server" DataSourceID="SqlDataSource1" Height="510px" OnLoad="Chart1_Load" Width="850px">
                <series>
                    <asp:Series Name="Series1" XValueMember="fname" YValueMembers="votecount" ChartType="Bar">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname], [votecount] FROM [Vote_Count]"></asp:SqlDataSource>
                     </div>
            </div>
        </div>
    </form>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
