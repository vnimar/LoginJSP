package br.com.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UsuarioDAO {
    private Connection con;
    public UsuarioDAO(Connection con){
        this.con = con;
    }
    public void adicionar(Usuario u) throws SQLException{
        String sql = "insert into tb_login(nome,email,senha)values(?,?,?)";
        try{
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getEmail());
            stmt.setString(3, u.getSenha());
            
            stmt.execute();
            stmt.close();
        } catch(SQLException e){
            e.printStackTrace();
        } finally{
            con.close();
        }
    }
    public void atualizar(Usuario u) throws SQLException{
        String sql = "update tb_login set nome = ? , email = ? , senha= ? where id = ?";
        try{
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getEmail());
            stmt.setString(3, u.getSenha());
            stmt.setInt(4, u.getId());
            
            stmt.execute();
            stmt.close();
        } catch(SQLException e){
            e.printStackTrace();
        } finally{
            con.close();
        }
    }
    
}
