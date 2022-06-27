/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Status {
    private int id;
    private String stname;
    private Student sid;
    private Lesson lid;
    private Date recordtime;

    public Status() {
    }

    public Status(int id, String stname, Student sid, Lesson lid, Date recordtime) {
        this.id = id;
        this.stname = stname;
        this.sid = sid;
        this.lid = lid;
        this.recordtime = recordtime;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    public Student getSid() {
        return sid;
    }

    public void setSid(Student sid) {
        this.sid = sid;
    }

    public Lesson getLid() {
        return lid;
    }

    public void setLid(Lesson lid) {
        this.lid = lid;
    }

    public Date getRecordtime() {
        return recordtime;
    }

    public void setRecordtime(Date recordtime) {
        this.recordtime = recordtime;
    }

   
}
