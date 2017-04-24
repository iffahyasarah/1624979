<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
     <link rel="stylesheet" href="Index.css" type="text/css" />

     </head><body><form id="form1" runat="server">


    <div id="loginform">
    <div class="loginform">
        LOG IN
        <p>
            Username:</p>
        <p>
            &nbsp;<asp:TextBox ID="usrnme" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:<br />
            <asp:TextBox ID="txtpswrd" runat="server"></asp:TextBox>
        </p>
        
        <asp:Button ID="BttnLgn" runat="server" Text="Login" OnClick="BttnLgn_Click" />

        <asp:Literal ID="LiteralLgn" runat="server"></asp:Literal> 
        </div>
    </div>

         <div id="rgstrfrm">
         <div class="registerform">
             Register
             <p>
                 Email:
             </p>
            <br/>
             <asp:TextBox ID="TxtEml" runat="server"></asp:TextBox>

             <br />


             Username:
             <p>
                 <asp:TextBox ID="TxtUsrnme" runat="server"></asp:TextBox>  
             </p>
             password:
             <p>

                 <asp:TextBox ID="TxtPsswrd" runat="server"></asp:TextBox>
                 </p>
                Confirm Password:
              <p>
                  <asp:TextBox ID="TxtCnfrmPsswrd" runat="server"></asp:TextBox>
              </p>

             <asp:Button ID="btnRegister" runat="server" Text="Register" />
             <asp:Literal ID="LiteralRegister" runat="server"></asp:Literal>
             </div>

             </div>
    </form>
   
</body>
</html>
