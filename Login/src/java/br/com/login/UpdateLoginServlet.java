
package br.com.login;

import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateLoginServlet extends HttpServlet{
    private static final long serailVersionUID = 1L;
        public UpdateLoginServlet(){
            super();
        }
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
            PrintWriter writer = response.getWriter();
            String id = request.getParameter("id");
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            
            Connection con;
            try{
                con = CriarConexao.getConexao();
                
                Usuario u = new Usuario();
                u.setId(Integer.valueOf(id));
                u.setNome(nome);
                u.setEmail(email);
                u.setSenha(senha);
                
                UsuarioDAO dao = new UsuarioDAO(con);
                dao.atualizar(u);
                request.setAttribute("id", u.getId());
                request.setAttribute("nome", u.getNome());
                request.setAttribute("email", u.getEmail());
                request.setAttribute("senha", u.getSenha());
                request.getRequestDispatcher("logado.jsp").forward(request, response);
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
}
