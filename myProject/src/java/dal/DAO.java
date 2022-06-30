/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Group;
import model.Instructor;
import model.Lesson;
import model.Room;
import model.TimeSlot;
import model.User;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext{

    public static void main(String[] args) {
        DAO d = new DAO();
//        User u = d.getUser("thanhlkhe150490", "12345678");
//        System.out.println(u.getName());
        List<Lesson> list = d.getLessonByTid(1);
        System.out.println(list.get(0).getTid());
    }

    public Group getGroupByID(int id) {
        Group g = null;
        String sql = "select * from [Group] where gid = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Course c = new Course(rs.getInt(3), "");
                g = new Group(rs.getInt(1), rs.getString(2), c);
            }
        } catch (Exception e) {
        }
        return g;
    }

    public List<Lesson> getAllLesson() {
        List<Lesson> list = new ArrayList();
        DAO d = new DAO();

        String sql = "select * from lession";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group(rs.getInt(2), "", d.getGroupByID(rs.getInt(2)).getCid());
                Instructor i = new Instructor(rs.getInt(3), "");
                TimeSlot ts = new TimeSlot(rs.getInt(4), "");
                Room r = new Room(rs.getInt(5), "");
                Lesson l = new Lesson(rs.getInt(1), g, i, ts, r);
                list.add(l);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public User getUser(String userName, String pass) {
       User u = null;
        String sql = "select * from Account\n"
                + "where [name]=? and [password]=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                 u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
              
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return u;
    }
    public List<Lesson> getLessonByTid(int id){
        List<Lesson> list = new ArrayList<>();
        DAO d = new DAO();
        String sql = "select * from Lession where tid=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
             Group g = new Group(rs.getInt(2), "", d.getGroupByID(rs.getInt(2)).getCid());
                Instructor i = new Instructor(rs.getInt(3), "");
                TimeSlot ts = new TimeSlot(rs.getInt(4), "");
                Room r = new Room(rs.getInt(5), "");
                Lesson l = new Lesson(rs.getInt(1), g, i, ts, r);
                list.add(l);    
                
            }
        } catch (SQLException e) {
        }
        return list;
    }

   
}
