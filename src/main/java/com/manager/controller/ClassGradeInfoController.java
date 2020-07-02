package com.manager.controller;

import com.manager.pojo.ClassGradeInfoView;
import com.manager.service.ClassGradeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.List;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/16.
 */
@RestController
@CrossOrigin
public class ClassGradeInfoController {

    @Autowired
    ClassGradeInfoService classGradeInfoService;

    @PostMapping("/ClassGradeInfo/search")
    public Map<String, Object> search(@RequestBody Map<String,Object> params){
        System.out.println(params);
        return classGradeInfoService.getClassGradeInfo(params);
    }
    @PostMapping("/ClassGradeInfo/searchMakeup")
    public  Map<String, Object> searchMakeup(@RequestBody Map<String,Object> params){
        System.out.println("aaa"+params);
        return classGradeInfoService.getClassGradeInfoMakeup(params);
    }
    @PostMapping("/ClassGradeInfo/insert")
    public  Map<String, Object> insert(@RequestBody Map<String,Object> params){
        System.out.println(params);
        return classGradeInfoService.insertGrade(params);
    }

    @PostMapping("/ClassGradeInfo/insertMakeup")
    public  Map<String, Object> insertMakeup(@RequestBody Map<String,Object> params){
        System.out.println(params);
        return classGradeInfoService.insertGradeMakeup(params);
    }
}
