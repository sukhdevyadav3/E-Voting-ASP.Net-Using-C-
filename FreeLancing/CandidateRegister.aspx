<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateRegister.aspx.cs" Inherits="FreeLancing.CandidateRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

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
  background-color: #2980b9;
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
                            <a class="nav-link" href="log.aspx">Login</a>
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
    
            <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

             <form runat="server">
  
                  
        
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <div class="form-outline mb-4">
                                   
                      <label class="form-label" for="form3Example1cg">Your Name</label>
                    <asp:TextBox ID="txtname" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vname" ControlToValidate="txtname" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                
                </div>

                <div class="form-outline mb-4">
               
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                  <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vemail" ControlToValidate="txtemail" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtemail" runat="server" ErrorMessage="Invalid email format" ForeColor="Red"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
    </asp:RegularExpressionValidator>
                    </div>
               <div class="form-outline mb-4">
    <label class="form-label" for="form3Example4cg">Age</label>
    <asp:TextBox ID="txtage" runat="server" class="form-control form-control-lg" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtage" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="txtage"
        ErrorMessage="Age must be 18 or greater." MinimumValue="18" Type="Integer"
        ForeColor="Red" Display="Dynamic" MaximumValue="60"></asp:RangeValidator>
</div>


                <div class="form-outline mb-4">
                  
                  <label class="form-label" for="form3Example4cg">Password</label>
                       <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" class="form-control form-control-lg"></asp:TextBox>
               <asp:RequiredFieldValidator ID="vpassword" ControlToValidate="txtpassword" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                <div class="form-outline mb-4">
                    
                <label class="form-label" for="form3Example4cdg">Repeat your password</label>
                  <asp:TextBox ID="txtcpassword" TextMode="Password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vcpassword" ControlToValidate="txtcpassword" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password is not same" ControlToCompare="txtpassword" ControlToValidate="txtcpassword"></asp:CompareValidator>
                 
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                    <div>
                        <input type="file" id="fileUpload" runat="server" class="custom-file-input" />
<label for="fileUpload" class="custom-file-label">Choose File</label>
                        
                       
                    </div>
                </div>

                 <div  >

                     <asp:RadioButton ID="RadioVoter" Text="Voter" GroupName="g" Visible="true" runat="server" Checked="True" />
                     <asp:RadioButton ID="RadioCandidate" Text="Candidate" GroupName="g" runat="server" />

                 </div>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnRegister" runat="server" Text="Submit"  class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" OnClick="btnRegister_Click"/>
                  
                </div>

              

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <script type="text/javascript">
    function displaySelectedImage() {
        var fileInput = document.getElementById('fileUpload');
        var img = document.getElementById('selectedImage');
        
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                img.src = e.target.result;
            }

            reader.readAsDataURL(fileInput.files[0]);
        }
    }
    </script>
       
</body>
</html>
