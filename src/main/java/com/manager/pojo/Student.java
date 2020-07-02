package com.manager.pojo;


/**
 * Created by CHEN on 2020/6/14.
 */
public class Student {
    private  Integer sid;
    private  String name;
    private String password;

    public Student(Integer sid, String name, String password) {
        this.sid = sid;
        this.name = name;
        this.password = password;
    }
    public Student(Integer sid, String name) {
        this.sid = sid;
        this.name = name;
    }
    public Student(){}

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
