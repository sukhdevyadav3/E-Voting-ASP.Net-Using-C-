<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="FreeLancing.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
.h-custom {
height: calc(100% - 73px);
}
@media (max-width: 450px) {
.h-custom {
height: 100%;
}
}
    </style>
</head>
<body>
   <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
       <form runat="server">
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            &nbsp;
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-linkedin-in"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
         
            <label class="form-label" for="form3Example3">Email address</label>
              <asp:TextBox ID="txtusername" runat="server" class="form-control form-control-lg"
              placeholder="Enter a valid email address" ></asp:TextBox>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            
            <label class="form-label" for="form3Example4">Password</label>
              <asp:TextBox ID="txtpassword" runat="server" class="form-control form-control-lg"
              placeholder="Enter password" TextMode="Password"></asp:TextBox>
          </div>

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
           
            <a href="#!" class="text-body">Forgot password?</a>
          </div>
           <br />
           <div class="form-check mb-0" style="left: 0px; top: -1px">
               <asp:RadioButton ID="RadioCandidate" Text="Candidate" runat="server" Checked="True" GroupName="r1" ValidationGroup="g1" />
               &nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="RadioVoter" Text="Voter" runat="server" GroupName="r1" ValidationGroup="g1" />
              &nbsp;&nbsp;&nbsp;
                   <asp:RadioButton ID="RadioAdmin" Text="Admin" GroupName="r1" runat="server" />
           </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            
              <asp:Button ID="Button1" runat="server" Text="Login"  class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;" OnClick="Button1_Click"/>

              <p class="small fw-bold mt-2 pt-1 mb-0">
                  <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
              </p>

            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="CandidateRegister.aspx"
                class="link-danger">Register as Candidate</a></p>
                          <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="CandidateRegister.aspx"
                class="link-danger">Register as Voter</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2023. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
    <!-- Right -->
  </div>
</section>
</body>
</html>
