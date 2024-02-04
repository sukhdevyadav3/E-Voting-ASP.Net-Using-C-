<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FreeLancing.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
    <!-- Datatables-->
    <link href="bootstrap/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css" 
     rel="stylesheet" />
 
</head>
<body>
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
    <form id="form1" runat="server">
       <section class="vh-100" style="background-color: #9de2ff;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-md-9 col-lg-7 col-xl-5">
        <div class="card" style="border-radius: 15px;">
          <div class="card-body p-4">
            <div class="d-flex text-black">
              <div class="flex-shrink-0">
                  <asp:Image ID="Image1" runat="server"  alt="Generic placeholder image" class="img-fluid"
                  style="width: 180px; border-radius: 10px;"/>
                
              </div>
              <div class="flex-grow-1 ms-3">
                <h5 class="mb-1">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h5>
                <p class="mb-2 pb-1" style="color: #2b2a2a;">
                     <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                </p>
                <div class="d-flex justify-content-start rounded-3 p-2 mb-2"
                  style="background-color: #efefef;">
                  <div>
                    <p class="small text-muted mb-1">Age</p>
                    <p class="mb-0">41</p>
                  </div>
                  <div class="px-3">
                    <p class="small text-muted mb-1">Followers</p>
                    <p class="mb-0">976</p>
                  </div>
                  <div>
                    <p class="small text-muted mb-1">Rating</p>
                    <p class="mb-0">8.5</p>
                  </div>
                </div>
                <div class="d-flex pt-1">
                    <asp:Button ID="btnLogout" class="btn btn-outline-primary me-1 flex-grow-1" data-mdb-ripple-init data-mdb-ripple-color="dark"  runat="server" Text="Logout" OnClick="btnLogout_Click" />
                     <asp:Button ID="btnResult"   class="btn btn-primary flex-grow-1" data-mdb-ripple-init data-mdb-ripple-color="dark" runat="server" Text="Result" OnClick="btnResult_Click" />
        </div>
      </div>
    </div>
  </div>
</section>
        <asp:Label ID="HiddenUsername" runat="server" Visible="False"></asp:Label>
</form>
</body>
</html>
