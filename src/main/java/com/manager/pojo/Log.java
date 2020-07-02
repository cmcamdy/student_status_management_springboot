package com.manager.pojo;

import java.util.Date;

/**
 * Created by CHEN on 2020/6/21.
 */
public class Log {

    private Integer logId;
    private Date logDate;
    private String logType;
    private Integer courseId;

    public Log(){}
    public Log(Integer logId, Date logDate, String logType, Integer courseId) {
        this.logId = logId;
        this.logDate = logDate;
        this.logType = logType;
        this.courseId = courseId;
    }

    @Override
    public String toString() {
        return "Log{" +
                "logId=" + logId +
                ", logDate=" + logDate +
                ", logType='" + logType + '\'' +
                ", courseId=" + courseId +
                '}';
    }

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public Date getLogDate() {
        return logDate;
    }

    public void setLogDate(Date logDate) {
        this.logDate = logDate;
    }

    public String getLogType() {
        return logType;
    }

    public void setLogType(String logType) {
        this.logType = logType;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }
}
