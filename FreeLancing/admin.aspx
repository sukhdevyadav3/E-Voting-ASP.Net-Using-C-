<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FreeLancing.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Admin Page</title>

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
.button-spacing {
    margin-right: 30px; /* Adjust the value to control the spacing */
}
       .gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}




/* Hide default file input */
.custom-file-input {
  display: none;
}

/* Style label to resemble a button */
.custom-file-label {
  background-color: #3498db;
  color: #fff;
  padding: 8px 15px;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
}

/* On hover, change background color */
.custom-file-label:hover {
  backgr
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
                            <a class="nav-link" href="Graph.aspx">Result</a>
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

    
      
      <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Manage</h2>
        <form runat="server" class="needs-validation" novalidate>
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
                   
                    <asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="txtage"
        ErrorMessage="Age must be 18 or greater." MinimumValue="18" Type="Integer"
        ForeColor="Red" Display="Dynamic" MaximumValue="60"></asp:RangeValidator>   

                    <div class="invalid-feedback">Please enter your age.</div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="txtUsername">Email:</label>
                    <asp:TextBox ID="txtusername" class="form-control" runat="server"></asp:TextBox>
                 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtusername" runat="server" ErrorMessage="Invalid email format" ForeColor="Red"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
    </asp:RegularExpressionValidator>
                    <div class="invalid-feedback">Please enter a username.</div>
                </div>
                <div class="col-md-6 mb-3">
                    <labf el for="txtUsername">Password:</labf>
                    <asp:TextBox ID="txtpassword" class="form-control" runat="server"></asp:TextBox>
                    
                    <div class="invalid-feedback">Please enter a username.</div>
                </div>
            </div>
            
             
     
            <asp:Button ID="Button1" runat="server" class="btn btn-primary  button-spacing" Text="Search" OnClick="Button1_Click" style="height: 40px" />
            <asp:Button ID="Button2" runat="server" class="btn btn-primary  button-spacing" Text="Add"  Width="100px" OnClick="Button2_Click" />
             <asp:Button ID="Button3" runat="server" class="btn btn-primary  button-spacing" Text="Modify"  Width="100px" OnClick="Button3_Click"  />
     <div>
          <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
     </div>
        </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


