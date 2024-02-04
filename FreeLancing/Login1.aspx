<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="FreeLancing.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
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

 /* CSS styles for the login form */
    .login-container {
        max-width: 300px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .text-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .login-button {
        width: 100%;
        padding: 10px;
        background-color: #3498db;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .login-button:hover {
        background-color: #2980b9;
    }

    .error-message {
        color: red;
        margin-bottom: 10px;
    }
</style>

</head>
<body>


    <div class="navbar">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="Signup.aspx">SignUp</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
       <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <div class="login-container">
     
         <form runat="server">
        <h2>Login</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="text-input" placeholder="Username" />
        <asp:TextBox ID="txtPassword" runat="server" CssClass="text-input" TextMode="Password" placeholder="Password" />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-button" />
    </form>
             </div>
    
</body>
</html>
