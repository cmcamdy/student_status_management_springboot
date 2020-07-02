package com.manager.mapper;

import com.manager.pojo.StudentInfoWithCreditView;

/**
 * Created by CHEN on 2020/6/17.
 */
public interface StudentStatusMapper {
    Integer updateStatus(StudentInfoWithCreditView studentInfoWithCreditView);
}
