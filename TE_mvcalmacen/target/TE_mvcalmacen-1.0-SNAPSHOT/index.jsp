<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista=(ArrayList<Producto>)session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Productos</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>DESCRIPCION</th>
                    <th>CANTIDAD</th>
                    <th>PRECIO</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <%
                if(lista!=null){
                    for (Producto item:lista){
            %>            
                
            <tbody>
                <tr>
                    <td><%= item.getId()%></td>
                    <td><%= item.getDescripcion()%></td>
                    <td><%= item.getCantidad()%></td>
                    <td><%= item.getPrecio()%></td>
                    <td><a href="MainController?op=editar&id=<%=item.getId()%>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                           onclick="return confirm('¿Esta seguro de eliminar el registro?');">Eliminar</a></td>
                   
                </tr>
            </tbody>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
