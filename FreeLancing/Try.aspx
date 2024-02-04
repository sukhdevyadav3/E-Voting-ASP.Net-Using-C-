<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Try.aspx.cs" Inherits="FreeLancing.Try" %>


<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #007BFF;
        }

        .login-container {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px #aaa;
            width: 300px;
            padding: 20px;
            text-align: center;
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

        .image-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50%;
        }

        .image {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
      <div>


      </div>
         `<asp:GridView ID="GridView1" runat="server">
         </asp:GridView>
         </form>
</body>
</html>