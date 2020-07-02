package com.manager.pojo;

/**
 * Created by CHEN on 2020/6/17.
 */
public class StudentInfoWithCreditView {

    private Integer sid;
    private String name;
    private String _class;
    private Integer required;
    private Integer elective;
    private Integer status;

    public StudentInfoWithCreditView(Integer sid, String name, String _class, Integer required, Integer elective, Integer status) {
        this.sid = sid;
        this.name = name;
        this._class = _class;
        this.required = required;
        this.elective = elective;
        this.status = status;
    }

    @Override
    public String toString() {
        return "StudentInfoWithCreditView{" +
                "sid=" + sid +
                ", name='" + name + '\'' +
                ", _class='" + _class + '\'' +
                ", required=" + required +
                ", elective=" + elective +
                ", status=" + status +
                '}';
    }

    public StudentInfoWithCreditView(){}

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

    public String get_class() {
        return _class;
    }

    public void set_class(String _class) {
        this._class = _class;
    }

    public Integer getRequired() {
        return required;
    }

    public void setRequired(Integer required) {
        this.required = required;
    }

    public Integer getElective() {
        return elective;
    }

    public void setElective(Integer elective) {
        this.elective = elective;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
