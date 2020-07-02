package com.manager.mapper;

import com.manager.pojo.Student;
import com.manager.pojo.StudentInfo;
import com.manager.pojo.StudentInfoView;
import org.apache.ibatis.annotations.Mapper;

import java.util.LinkedList;

/**
 * Created by CHEN on 2020/6/4.
 */
@Mapper
public interface StudentInfoMapper {


    //使用的模糊查询
//    LinkedList<StudentInfoView> getStudentInfoByName(StudentInfoView studentInfo);
//    LinkedList<StudentInfoView> getStudentInfo();
//    LinkedList<StudentInfoView> getStudentInfoByMajor(StudentInfoView studentInfo);

    LinkedList<StudentInfoView> getStudentInfoByNameOrMajor(StudentInfoView studentInfoView);

    Integer updateStudent(Student student);
    Integer updateStudentInfo(StudentInfo studentInfo);

    void addNewStudent(Student student);

    void addStudentInfo(StudentInfo studentInfo);
}
