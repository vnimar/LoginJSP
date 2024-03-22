<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Cadastro Login</h1>
        <table>
            <form name="frmCadastrarLogin" action="CadastroLogin" method="post">
                <tr>
                    <td>Nome:</td><td><input type="text" name="nome"/></td>
                    <td>Email:</td><td><input type="text" name="email"/></td>
                    <td>Senha:</td><td><input type="passowrd" name="senha"/></td>
                    <td colspan="2"><input type="submit" value="cadastrar"/></td>
                </tr>
            </form>
        </table>
    </body>
</html>
