package com.manager.pojo;

/**
 * Created by CHEN on 2020/6/3.
 */

public class Major {
    private Integer id;
    private String name;
    private Integer electives;
    private Integer elective_total;
    private Integer required;



    public Major() {
    }

    @Override
    public String toString() {
        return "Major{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", electives=" + electives +
                ", elective_total=" + elective_total +
                ", required=" + required +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getElectives() {
        return electives;
    }

    public void setElectives(Integer electives) {
        this.electives = electives;
    }

    public Integer getElective_total() {
        return elective_total;
    }

    public void setElective_total(Integer elective_total) {
        this.elective_total = elective_total;
    }

    public Integer getRequired() {
        return required;
    }

    public void setRequired(Integer required) {
        this.required = required;
    }

    public Major(Integer id, String name, Integer electives, Integer elective_total, Integer required) {

        this.id = id;
        this.name = name;
        this.electives = electives;
        this.elective_total = elective_total;
        this.required = required;
    }
}
