package com.manager.pojo;

/**
 * Created by CHEN on 2020/6/14.
 */
public class StudentInfo {
    private Integer sid;
    private Integer _class;
    private String idnum;
    private String address;
    private Integer major;
    private String other;


    public StudentInfo(Integer sid, Integer _class, String idnum, String address, Integer major, String other) {
        this.sid = sid;
        this._class = _class;
        this.idnum = idnum;
        this.address = address;
        this.major = major;
        this.other = other;
    }

    public StudentInfo(){}


    @Override
    public String toString() {
        return "StudentInfo{" +
                "sid=" + sid +
                ", _class=" + _class +
                ", idnum='" + idnum + '\'' +
                ", address='" + address + '\'' +
                ", Major=" + major +
                ", other='" + other + '\'' +
                '}';
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer get_class() {
        return _class;
    }

    public void set_class(Integer _class) {
        this._class = _class;
    }

    public String getIdnum() {
        return idnum;
    }

    public void setIdnum(String idnum) {
        this.idnum = idnum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getMajor() {
        return major;
    }

    public void setMajor(Integer major) {
        this.major = major;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }
}
