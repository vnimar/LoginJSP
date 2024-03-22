<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="br.com.conexao.CriarConexao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logado</title>
    </head>
    <body>
        <%
            String nomes = (String) session.getAttribute("nome");
            String email = (String) session.getAttribute("email");
        %>

        Seja Bem-Vindo : <%=nomes%> | <%=email%> |
        <h1>Logado</h1><br>
        <h3>Usuarios cadastrados no sistema: </h3><br>
        <table width="700px" border="1" cellspacing="0">
            <tr>
                <td><strong>Id</strong></td>
                <td><strong>Nome</strong></td>
                <td><strong>Email</strong></td>
                <td><strong>Senha</strong></td>
                <td><strong>#</strong></td>
            </tr>
            <%
                int id = 0;
                String nome = "";
                String emails = "";
                String senha = "";
                Connection conn = CriarConexao.getConexao();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from tb_login");
                while (rs.next()) {
                    id = rs.getInt("id");
                    nome = rs.getString("nome");
                    emails = rs.getString("email");
                    senha = rs.getString("senha");
            %>
            <tr>
                <td><%=id%></td>
                <td><%=nome%></td>
                <td><%=emails%></td>
                <td><%=senha%></td>
                <td><a href="logado.jsp?id=<%=id%>&nome=<%=nome%>&email=<%=emails%>&senha=<%=senha%>">
                        Editar</a></td>
            </tr>
            <% }
                rs.close();
                stmt.close();
                conn.close();
            %>
        </table>
        <form action="UpdateLogin" method="post">
        <table>
            <tr>
                <td><strong>Id</strong></td>
                <td><strong>Nome</strong></td>
                <td><strong>Email</strong></td>
                <td><strong>Senha</strong></td>
            </tr>
            <tr>
                <td><input type="text" name="id" size="1" value="<%=request.getParameter("id") %>"></input></td>
                <td><input type="text" name="nome" size="35" value="<%=request.getParameter("nome") %>"></input></td>
                <td><input type="text" name="email" size="35" value="<%=request.getParameter("email") %>"></input></td>
                <td><input type="text" name="senha" size="10" value="<%=request.getParameter("senha") %>"></input></td>
            <input type="hidden" name="ac" value="atualizar"></input>
            </tr>
        </table>
            <input type="submit" value="atualizar"></input>
        </form>
        <br><br>
        <a href="remover.jsp">Sair</a> 
    </body>
</html>
