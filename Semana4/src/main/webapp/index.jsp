<%--
    Document   : index
    Created on : Sep 6, 2023, 4:06:36 PM
    Author     : devgabmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página inicial</title>
        <style>
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                width: 100%;
            }
            .form {
                display: flex;
                flex-direction: column;
                gap: 16px;
            }
        </style>
    </head>
    <body>
        <%

            String dbUsername = "Gabriel";
            String dbPassword = "uvapassa";
        %>
        <article class="container">
            <h1>Exercício de LDSW</h1>
            <h2>Semana 4 - 2023.3</h2>
            <form class="form" method="post" action=".">
                <section class="container">
                    <label>Usuário:</label>
                    <input name="username" type="text" />
                </section>
                <section class="container">
                    <label>Senha:</label>
                    <input name="password" type="password" />
                </section>
                <input value="Entrar" type="submit" />
            </form>
            <%
                String username = (String) request.getParameter("username");
                String password = (String) request.getParameter("password");

                if (username == null || password == null) {
                    return;
                }
                if (!dbUsername.equals(username) || !dbPassword.equals(password)){
            %>
            <section>
                <h2>
                    As credenciais estão incorretas!
                </h2>
            </section>
            <%
                }
                else if (username != null) {
//                    HttpSession session = request.getSession();
                    session.setAttribute("loggedUser", username);
                    response.sendRedirect("./Welcome.jsp");
                }
            %>
        </article>
    </body>
</html>
