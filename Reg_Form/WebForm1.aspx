<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Reg_Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Registration Form</title>
</head>
<body>

    <form id="form1" runat="server">
   <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.2.js">
</script>
<script
src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.8.1/jquery.validate.js">
   
</script>
<script src="~/Scripts/jquery.validate.unobtrusive.js">
</script>

        <div>
            <asp:HiddenField ID="hfUserID" runat="server"  />

             <table class="auto-style1">
                <tr>
                    <td>First Name :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" First Name is Required" Display="Static" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
        
                </tr>
                <tr>
                    <td>Last Name :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" Last Name is Required" Display="Static" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <td>Email Address :</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3"  ErrorMessage=" Please provide a valid Email Address" ValidationExpression="\S+@\S+\.\S+"  Display="Static" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password :</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage=" Password must contain one Uppercase and Lowercase with two numeric and one Special Character." ValidationExpression="[A-Z]\w{1,1}[a-z]\w*\d+\w+\S{1,1}" Display="Static" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                      </tr>
                <tr>

                    <td>ConfirmPassword :</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True"></asp:TextBox>
                      
                   
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Save Password" />
                      
                    </td>
                      </tr>
                <tr>

                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Register" Height="34px" Width="109px" OnClick="Button1_Click1"></asp:Button>
                    </td>  

                </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                     </td>
                 </tr>
                </table>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </p>
        <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label>
        </form>
</body>
</html>  
       