<%@page import="com.emergentes.modelo.Salud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Salud salud = (Salud) request.getAttribute("salud");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center><body>
            <h1>Nuevo/ Editar Entrada</h1>
        <form action="MainControlador" method="post">
        <table>
            <input type="hidden" name="id" value="${salud.id}">
            
            <tr>
                <td>FECHA:</td>
                <td><input type="date" name="fecha" value="${salud.fecha}"></td>
            </tr>
            <tr>
                <td>TITULO:</td>
                <td><input type="text" name="titulo" value="${salud.titulo}"></td>
            </tr>
            <tr>
                <td>CONTENIDO:</td>
                <td>
                <textarea name="contenido" value="${salud.contenido}">
                </textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="ENVIAR"></td>
            </tr>
        </table>
            </form>
    </body></center> 
</html>
