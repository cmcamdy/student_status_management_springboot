package com.manager.pojo;

import org.apache.ibatis.annotations.Result;

/**
 * Created by CHEN on 2020/6/4.
 */
public class StudentInfoView {

    private Integer sid;
    private String name;
    private String address;
    private String _class;
    private String other;


    public StudentInfoView(Integer sid, String name, String address, String _class, String other) {
        this.sid = sid;
        this.name = name;
        this.address = address;
        this._class = _class;
        this.other = other;
    }

    public StudentInfoView() {
    }
    public StudentInfoView(String name){
        this.name = name;
    }

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String get_class() {
        return _class;
    }

    public void set_class(String _class) {
        this._class = _class;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }


    @Override
    public String toString() {
        return "StudentInfoView{" +
                "sid=" + sid +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", _class='" + _class + '\'' +
                ", other='" + other + '\'' +
                '}';
    }
}
