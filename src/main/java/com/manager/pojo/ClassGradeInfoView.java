package com.manager.pojo;

/**
 * Created by CHEN on 2020/6/16.
 */
public class ClassGradeInfoView {

    private Integer sid;
    private String studentName;
    private Double grade;
    private Double makeupGrade;
    private String cname;
    private String teacherName;
    private String credit;
    private Integer rebuild;

    public ClassGradeInfoView(Integer sid, String studentName, Double grade, Double makeupGrade, String cname, String teacherName, String credit, Integer rebuild) {
        this.sid = sid;
        this.studentName = studentName;
        this.grade = grade;
        this.makeupGrade = makeupGrade;
        this.cname = cname;
        this.teacherName = teacherName;
        this.credit = credit;
        this.rebuild = rebuild;
    }

    public ClassGradeInfoView(){}

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public Double getGrade() {
        return grade;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }

    public Double getMakeupGrade() {
        return makeupGrade;
    }

    public void setMakeupGrade(Double makeupGrade) {
        this.makeupGrade = makeupGrade;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public Integer getRebuild() {
        return rebuild;
    }

    public void setRebuild(Integer rebuild) {
        this.rebuild = rebuild;
    }
}
