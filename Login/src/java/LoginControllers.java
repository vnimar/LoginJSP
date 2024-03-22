
import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginControllers extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        String nomeBuscado = "";
        String emailBuscado = "";
        String senhaBuscada = "";
        Connection con;
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String sql = "Select * from tb_login where nome = ? and email = ? and senha = ?";
        try{
            con = CriarConexao.getConexao();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, nome);
            stmt.setString(2, email);
            stmt.setString(3, senha);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                nomeBuscado = rs.getString("nome");
                emailBuscado = rs.getString("email");
                senhaBuscada = rs.getString("senha");
            }
            rs.close();
            stmt.close();
        } catch(SQLException e){
            e.printStackTrace();
        }
        if (nomeBuscado.equals(nome) ||emailBuscado.equals(email) || senhaBuscada.equals(senha)){
            HttpSession session = request.getSession();
            session.setAttribute("nome", nome);
            session.setAttribute("email", email);
            request.getRequestDispatcher("logado.jsp").forward(request, response);
        } else {
            System.out.println(nomeBuscado + "-" + nome);
            System.out.println(emailBuscado + "-" + email);
            System.out.println(senhaBuscada + "-" + senha);
            request.getRequestDispatcher("errodeusuario.jsp").forward(request, response);
        }
    }
}
