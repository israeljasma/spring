<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.bootcamp.models.Usuario"%>
<%
List<Usuario> usuarios = (List<Usuario>)request.getAttribute("usuarios");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Listar usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Lista de Usuarios</h2>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nombre de usuario</th>
                <th>RUT</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Fecha de Nacimiento</th>
            </tr>
            </thead>
            <tbody>

            <% for (Usuario user : usuarios) {%>
                <tr>
                    <td><%=user.getId()%></td>
                    <td><%=user.getRut()%></td>
                    <td><%=user.getUsername()%></td>
                    <td><%=user.getNombres()%></td>
                    <td><%=user.getApellidos()%></td>
                    <td><%=user.getFechaNacimiento()%></td>
                </tr>
            <%}%>

            </tbody>
        </table>
    </div>
</body>
</html>