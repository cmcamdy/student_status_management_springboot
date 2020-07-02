package com.manager.pojo;

/**
 * Created by CHEN on 2020/6/16.
 */
public class Course {


    private Integer cid;
    private Integer tid;
    private String cname;
    private Integer type;

    public Course(Integer cid, Integer tid, String cname, Integer type) {
        this.cid = cid;
        this.tid = tid;
        this.cname = cname;
        this.type = type;
    }
    public Course(){}

    @Override
    public String toString() {
        return "Course{" +
                "cid=" + cid +
                ", tid=" + tid +
                ", cname='" + cname + '\'' +
                ", type=" + type +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
