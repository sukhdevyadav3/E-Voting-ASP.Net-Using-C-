<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="VotePage.aspx.cs" Inherits="FreeLancing.VotePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
 
    <!-- Bootstrap Font Icon CSS -->
    <link rel="stylesheet" href=
"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
    <style>
    body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
}

.login-container {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #aaa;
    width: 300px;
    margin: 10px auto;
    padding: 20px;
    text-align: center;
    margin-top: 100px;
}

.login-container h2 {
    color: #333;
}

.text-input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.login-button {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.login-button:hover {
    background-color: #0056b3;
}

.error-message {
    color: #ff0000;
}


body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
}

.navbar {
    background-color: #333;
    overflow: hidden;
}

.navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
}

.navbar li {
    margin: 0;
    padding: 0;
}

.navbar li a {
    display: block;
    color: #fff;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.navbar li a:hover {
    background-color: #555;
}

.navbar li a.active {
    background-color: #007BFF;
    color: #fff;
}
 #container {
            display: flex;
            align-items: center;

        }

        #imageContainer {
            margin-right: 20px; /* Adjust this as needed for spacing */
        }



        /*button*/
        .button-15 {
  background-image: linear-gradient(#42A1EC, #0070C9);
  border: 1px solid #0077CC;
  border-radius: 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  direction: ltr;
  display: block;
  font-family: "SF Pro Text","SF Pro Icons","AOS Icons","Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 17px;
  font-weight: 400;
  letter-spacing: -.022em;
  line-height: 1.47059;
  min-width: 30px;
  overflow: visible;
  padding: 4px 15px;
  text-align: center;
  vertical-align: baseline;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
}

.button-15:disabled {
  cursor: default;
  opacity: .3;
}

.button-15:hover {
  background-image: linear-gradient(#51A9EE, #147BCD);
  border-color: #1482D0;
  text-decoration: none;
}

.button-15:active {
  background-image: linear-gradient(#3D94D9, #0067B9);
  border-color: #006DBC;
  outline: none;
}

.button-15:focus {
  box-shadow: rgba(131, 192, 253, 0.5) 0 0 0 3px;
  outline: none;
}
        

        .button-container {
    text-align: center;
}
        .button-1 {
    /* Add any button styles you require */
    padding: 10px 20px;
    font-size: 16px;
    /* Additional styles as needed */
}





         .button-1 {
  background-image: linear-gradient(#42A1EC, #0070C9);
  border: 1px solid #0077CC;
  border-radius: 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  direction: ltr;
  display: block;
  font-family: "SF Pro Text","SF Pro Icons","AOS Icons","Helvetica Neue",Helvetica,Arial,sans-serif;
  font-size: 17px;
  font-weight: 400;
  letter-spacing: -.022em;
  line-height: 1.47059;
  min-width: 30px;
  overflow: visible;
  padding: 4px 15px;
  text-align: center;
  vertical-align: baseline;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
}

.button-1:disabled {
  cursor: default;
  opacity: .3;
}

.button-1:hover {
  background-image: linear-gradient(#51A9EE, #147BCD);
  border-color: #1482D0;
  text-decoration: none;
}

.button-1:active {
  background-image: linear-gradient(#3D94D9, #0067B9);
  border-color: #006DBC;
  outline: none;
}

.button-1:focus {
  box-shadow: rgba(131, 192, 253, 0.5) 0 0 0 3px;
  outline: none;
}
        



               /* CSS styles */
      

        .grid-container {
            width: 80%; /* Adjust the width as needed */
            margin-bottom: 20px; /* Space between GridView and button */
        }

        #bigButton {
            padding: 20px 40px;
            font-size: 18px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #bigButton:hover {
            background-color: #2980b9;
        }

        .auto-style2 {
            margin-right: 0px;
        }
        

         /* Add any additional custom styles here */
        body {
            padding-top: 50px;
        }


         .logo-img {
            max-width: 100px; /* Adjust image size as needed */
            height: auto;
            margin-right: 10px; /* Adjust margin as needed */
        }

        .result-heading {
            background-color: #51A9EE;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 5px;
        }
    </style>
</head>
<body style="margin-top: 16px">
   
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Online Voting</a>
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
                            <a class="nav-link" href="log.aspx">Logout</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Portfolio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
     


    <h1 class="result-heading mt-4">Vote Now</h1>

     <form id="form1" runat="server">
        <br />
       

         
        
                <div class="container mt-5">
            <div class="row">
               
                  
                        
      <div id="container">
          
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Candidate]"></asp:SqlDataSource>
            <div id="imageContainer">
          &nbsp;&nbsp;&nbsp<asp:Image ID="Image1" runat="server" Height="192px" Width="173px" />
                </div>

            <asp:GridView ID="GridView1" runat="server" Height="500px" Width="783px" DataSourceID="SqlDataSource2" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CssClass="auto-style2" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField ShowHeader="False" HeaderText="Vote">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" class="button-15" Text="Choose" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="Email" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="fname" HeaderText="Name" SortExpression="fname" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
           
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp
             <asp:Button ID="bigButton" runat="server" Text="Vote" OnClick="bigButton_Click" CssClass="big-button" Height="86px" Visible="False" Width="226px" />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [photo], [fname], [partyname], [username] FROM [Candidate]"></asp:SqlDataSource>
           <div>
          <asp:Label ID="lblusername" runat="server" Text="" Visible="false"></asp:Label>
          <asp:Label ID="lblparty" runat="server" Text="" Visible="false"></asp:Label>
          <asp:Label ID="lblfname" runat="server" Text="" Visible="false"></asp:Label>
        
               </div>
        </div>
        
         
        
         <asp:Label ID="HiddenUsername" runat="server" Text="" Visible="false"></asp:Label>
        </div>
                    
                
       
        </div>
         
       
    </form>
     </div>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
