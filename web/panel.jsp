<%@page import="com.emergentes.modelo.Salud"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
if (session.getAttribute("logueado")!= "OK") {
        response.sendRedirect("login.jsp");
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <p style="padding-left:1100px;" >${sessionScope.usuario}<a href="LoginControlador?action=logout"> Salir  </a></p>
    <body style="background: grey;">
        <h1 style="text-align: center;background: mediumpurple">BLOG-SALUD</h1>
        
        <a href="MainControlador?op=nuevo" style="padding-left: 100px;">Nuevo Entrada</a><br><br>
        
            <c:forEach var="item" items="${lista}">
            <div style="padding-left: 100px;"> 
                ${item.fecha}
            </div>
            <br><br>
            <div style="padding-left: 100px;padding-right: 100px;">
                <strong>${item.titulo}</strong>
            <br><br>
            ${item.contenido}
            <br><br>
            <p>
                    Autor: ${sessionScope.usuario}
                <a style="padding-left:800px;padding-right: 100px;" 
                href="MainControlador?op=eliminar&id=${item.id}">Eliminar</a>
                <a href="editar.jsp">Editar</a></p>
            <p>********************************************************************************************************************************************</p>
            </div>
            
            </c:forEach>
                

    </body>
       </center>

</html>
