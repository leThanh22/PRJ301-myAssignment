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
public class DAO extends DBContext<User>{

    public static void main(String[] args) {
        DAO d = new DAO();
        User u = d.getUser("thanhlkhe150490@fpt.edu.vn", "12345678");
        
    }

    public User getUser(String userName, String pass) {
        /*
          public ArrayList<MyRect> getRectS(){
        
        ArrayList<MyRect> rects = new ArrayList<>();
        try {
            String sql = "SELECT * FROM drawRect";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                MyRect r = new MyRect();
                r.setX(rs.getInt("x"));
                r.setY(rs.getInt("y"));
                r.setW(rs.getInt("w"));
                r.setH(rs.getInt("h"));
                rects.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try{
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(RectDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return rects;
         */
        String sql = "select * from Account\n"
                + "where email=? and password=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt(0));
                u.setName(rs.getString(1));
                u.setPass(rs.getString(2));
                u.setRole(rs.getInt(3));
                u.setEmail(rs.getString(4));
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
    public void insert(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
