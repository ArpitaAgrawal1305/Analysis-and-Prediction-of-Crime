<%-- 
    Document   : AdminLogin
    Created on : Sep 29, 2015, 5:22:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
          <link href="CSS/GeneralStyleSheet.css" rel="stylesheet">
    </head>
    <body>
        <form action="AdminLogin" method="GET">
     <div id="mainDIv">
        
            <div id="HeaderDiv">
              Crime analysis and prediction using data mining
            </div>
            <div id="nav">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="UserLogin.jsp">Login</a></li>
                    
                    <li><a href="AdminLogin.jsp">Admin Login</a></li>                    
                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
            </div>
            
           <div id="middleDiv">
            <div id="login">
                
           
                <table align="center" cellspacing="10">
                    <tr align="center">
                        <td colspan="2"><h3>Admin Login</h3></td>
                        
                    </tr>
                    <tr>
                        <td>Username : </td>
                        <td><input id="input" type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>Password : </td>
                        <td><input id="input" type="password" name="pass"></td>
                    </tr>
                  
                    <tr align="center">
                        <td><input id="button" type="submit" value="Login" style="width: 100px; border-radius: 0px; background-color: greenyellow"></td>
                        <td><input id="button" type="button" value="Cancel" style="width: 100px; border-radius: 0px; background-color: greenyellow"></td>
                    </tr>
                   
                </table> 
               
              
                </div>
               
           </div>
               
               
              <div id="nav">
                <ul>
                      <li><a href="index.jsp">Home</a></li>
                    <li><a href="UserLogin.jsp">Login</a></li>
                    
                    <li><a href="AdminLogin.jsp">Admin Login</a></li>                    
                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
            </div>
         </div>
        </form>
    </body>
</html>
