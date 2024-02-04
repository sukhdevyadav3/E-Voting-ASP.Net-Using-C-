<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupVoter.aspx.cs" Inherits="FreeLancing.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Registration Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

        .navbar {
    background-color: #333;
    overflow: hidden;
}

        .error-message {
    color: #ff0000;
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
        </style>
</head>
<body>
     <div class="navbar">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="Login1.aspx">Login</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
         </div>

    <div class="container mt-5">
      
    
        <h2>Registration</h2>
        <form runat="server" >
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtFirstName">First Name:</label>
                     <asp:TextBox ID="txtFirstName"  class="form-control" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Please enter your first name.</div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="txtLastName">Last Name:</label>
                     <asp:TextBox ID="txtlastname"  class="form-control" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Please enter your last name.</div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtAge">Age:</label>
                    <asp:TextBox ID="txtage"  class="form-control" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Please enter your age.</div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtusername" class="form-control" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Please enter a username.</div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtPassword">Password:</label>
                                         <asp:TextBox ID="txtpassword" class="form-control" TextMode="Password"  runat="server"></asp:TextBox>

                    <div class="invalid-feedback">Please enter a password.</div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="txtConfirmPassword">Confirm Password:</label>
                    <asp:TextBox ID="txtconfirmpassword" class="form-control" TextMode="Password"  runat="server"></asp:TextBox>
            
                    <div class="invalid-feedback">Please confirm your password.</div>
                </div>
            </div>
      
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Signup" OnClick="Button1_Click" Font-Bold="True" Font-Size="Larger" Height="68px" Width="400px" />
     <div>
          <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
     </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
