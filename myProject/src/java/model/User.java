/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class User {
    private int id;
    private String userName;
    private String pass;
    private String fullname;
    private String codeUser;
    private ClassRoom classId;
    private String image;
    private Subject subjectId;

    public User() {
    }

    public User(int id, String userName, String pass, String fullname, String codeUser, ClassRoom classId, String image, Subject subjectId) {
        this.id = id;
        this.userName = userName;
        this.pass = pass;
        this.fullname = fullname;
        this.codeUser = codeUser;
        this.classId = classId;
        this.image = image;
        this.subjectId = subjectId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getCodeUser() {
        return codeUser;
    }

    public void setCodeUser(String codeUser) {
        this.codeUser = codeUser;
    }

    public ClassRoom getClassId() {
        return classId;
    }

    public void setClassId(ClassRoom classId) {
        this.classId = classId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Subject getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Subject subjectId) {
        this.subjectId = subjectId;
    }
    
}
