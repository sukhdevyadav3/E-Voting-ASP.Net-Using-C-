<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageUploadf.aspx.cs" Inherits="FreeLancing.ImageUploadf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <input type="file" id="fileUpload" runat="server" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
    </form>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
       
    </form>
</body>
</html>
