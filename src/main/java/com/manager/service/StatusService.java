package com.manager.service;

import com.manager.mapper.StudentStatusMapper;
import com.manager.pojo.StudentInfoWithCreditView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by CHEN on 2020/6/17.
 */
@Service
public class StatusService {

    @Autowired
    StudentStatusMapper studentStatusMapper;

    public boolean updateStatus(Map<String,Object> params){
        System.out.println(params);
        StudentInfoWithCreditView studentInfoWithCreditView = new StudentInfoWithCreditView();
        studentInfoWithCreditView.setSid((Integer)params.get("sid"));
        studentInfoWithCreditView.setStatus((Integer)params.get("status"));
        return studentStatusMapper.updateStatus(studentInfoWithCreditView)==1?true:false;
    }

}
