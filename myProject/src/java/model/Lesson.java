/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Lesson {
    private int id;
    private Group gid;
    private Instructor iid;
    private TimeSlot tid;
    private Room rid;

    public Lesson() {
    }

    public Lesson(int id, Group gid, Instructor iid, TimeSlot tid, Room rid) {
        this.id = id;
        this.gid = gid;
        this.iid = iid;
        this.tid = tid;
        this.rid = rid;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Group getGid() {
        return gid;
    }

    public void setGid(Group gid) {
        this.gid = gid;
    }

    public Instructor getIid() {
        return iid;
    }

    public void setIid(Instructor iid) {
        this.iid = iid;
    }

    public TimeSlot getTid() {
        return tid;
    }

    public void setTid(TimeSlot tid) {
        this.tid = tid;
    }

    public Room getRid() {
        return rid;
    }

    public void setRid(Room rid) {
        this.rid = rid;
    }
    
}
