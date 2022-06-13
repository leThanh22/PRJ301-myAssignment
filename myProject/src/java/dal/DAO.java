/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ClassRoom;
import model.Subject;
import model.User;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext{
    public static void main(String[] args) {
        DAO d = new DAO();
        User u = d.getUser("thanhlk147", "1234567");
        System.out.println(u.getCodeUser());
    }
    public User getUser(String userName, String pass){
        String sql="select * from [User]\n" +
"where username=? and pass=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                ClassRoom c = new ClassRoom(rs.getInt(6), "");
                Subject s = new Subject(rs.getInt(8), "");
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), c, rs.getString(7), s);
                 return u;
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    @Override
    public ArrayList<User> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public User get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   

    @Override
    public void insert(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Object model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
