<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1>Login</h1>
        
        <form action="LoginControlador" method="post">
            <label> Usuario: </label>
            <br>
            <input type="text"  name="usuario" >
            <br>
            <br>
            <label> Password: </label>
            <br>
            <input type="password"  name="password" >
            <br>
            <input type="submit"  value="Ingresar" >
            
        </form></center>
       
    </body>
</html>

