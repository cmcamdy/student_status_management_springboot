package com.manager.mapper;

import com.manager.pojo.StudentInfoWithCreditView;
import org.apache.ibatis.annotations.Mapper;

import java.util.LinkedList;

/**
 * Created by CHEN on 2020/6/17.
 */
@Mapper
public interface StudentInfoWithCreditMapper {

    LinkedList<StudentInfoWithCreditView> getStudentInfoByName(StudentInfoWithCreditMapper studentInfoWithCreditMapper);

}
