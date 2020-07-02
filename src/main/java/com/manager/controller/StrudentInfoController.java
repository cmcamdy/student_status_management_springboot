package com.manager.controller;

import com.manager.pojo.StudentInfoView;
import com.manager.pojo.StudentInfoWithCreditView;
import com.manager.service.StudentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedList;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/14.
 */
@RestController
@CrossOrigin
public class StrudentInfoController {


    @Autowired
    StudentInfoService studentInfo;


    @PostMapping("/studentInfo/searchInfo")
    public Map<String, Object> GetInfo(@RequestBody Map<String,Object> params){
        System.out.println(params.get("name"));
        return studentInfo.searchStudentInfo(params);
    }

    //更新学生信息
    @PostMapping("/studentInfo/uptadeInfo")
    public boolean UpdateInfo(@RequestBody Map<String,Object> params){
        System.out.println(params);
        return studentInfo.updateStudentInfo(params);
    }

    //添加学生信息
    /**
     * 添加学生，返回最新查询信息
     * @param params
     * @return
     */
    @PostMapping("/studentInfo/addInfo")
    public Map<String, Object> Add(@RequestBody Map<String,Object> params){
        System.out.println(params);
        return studentInfo.addNewStudent(params);
    }

    @PostMapping ("/StudentInfoWithCredit/search")
    public Map<String, Object> search(@RequestBody Map<String,Object> params) {
        System.out.println(params);
        return studentInfo.getStudentInfoWithCredit(params);
    }

}
