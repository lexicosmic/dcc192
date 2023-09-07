<%--
    Document   : Welcome
    Created on : Sep 6, 2023, 3:59:25 PM
    Author     : devgabmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String loggedUser = (String) session.getAttribute("loggedUser");
    if(loggedUser == null){
       response.sendRedirect("./index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boas-vindas!</title>
    </head>
    <body>
        <h1>Conteúdo</h1>
        <button onclick="generateJavaError()">
            Erro de Java
        </button>
        <button onclick="generateHTMLError()">
            Erro de HTML
        </button>
        <script>

        </script>
    </body>
</html>
