package com.manager.service;

import com.manager.mapper.ClassGradeInfoMapper;
import com.manager.pojo.ClassGradeInfoView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/16.
 */
@Service
public class ClassGradeInfoService {

    @Autowired
    ClassGradeInfoMapper classGradeInfoMapper;

    public static Map<String,Object> MypageHelper(Map<String,Object> params,List<ClassGradeInfoView> data){
        Map<String,Object> res = new HashMap<>();
        int from =((Integer)params.get("pageIndex")-1)*((Integer)params.get("pageSize"));
        int to = ((Integer)params.get("pageIndex"))*((Integer)params.get("pageSize"));
        //小小地实现一下分页，就不用pagehelper了
        res.put("data",data.subList(from,to>data.size()?data.size():to));
        res.put("pagetotal",data.size());
        return  res;
    }

    public Map<String, Object> getClassGradeInfo(Map<String,Object> params){

        ClassGradeInfoView classGradeInfoView = new ClassGradeInfoView();
        classGradeInfoView.setCname(params.get("cname")==""?null:(String)params.get("cname"));
        classGradeInfoView.setStudentName(params.get("studentName")==""?null:(String)params.get("studentName"));
        classGradeInfoView.setSid(params.get("sid")==""?null:Integer.valueOf((String) params.get("sid")));

        return  MypageHelper(params,classGradeInfoMapper.getClassGradeInfo(classGradeInfoView));
    }

    public Map<String, Object> getClassGradeInfoMakeup(Map<String, Object> params) {


        ClassGradeInfoView classGradeInfoView = new ClassGradeInfoView();
        classGradeInfoView.setCname(params.get("cname")==""?null:(String)params.get("cname"));
        classGradeInfoView.setStudentName(params.get("studentName")==""?null:(String)params.get("studentName"));
        classGradeInfoView.setSid(params.get("sid")==""?null:Integer.valueOf((String) params.get("sid")));

//        System.out.println(classGradeInfoMapper.getClassGradeInfo(classGradeInfoView));
        return  MypageHelper(params,classGradeInfoMapper.getClassGradeInfoMakeup(classGradeInfoView));
    }
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Map<String, Object> insertGrade(Map<String,Object> params){

        ClassGradeInfoView classGradeInfoView = new ClassGradeInfoView();
        classGradeInfoView.setCname(params.get("cname")==""?null:(String)params.get("cname"));
        //如果值不存在那么，就直接返回错误
        if (params.get("grade")==null)throw new RuntimeException();
        else classGradeInfoView.setGrade(Double.valueOf((String)params.get("grade")));

        classGradeInfoView.setSid(params.get("sid")==""?null:Integer.valueOf((Integer) params.get("sid")) );
        System.out.println();
        if (classGradeInfoMapper.updateGrade(classGradeInfoView)!=1) throw new RuntimeException();
        return  MypageHelper(params,classGradeInfoMapper.getClassGradeInfo(new ClassGradeInfoView()));
    }

    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Map<String, Object> insertGradeMakeup(Map<String, Object> params) {
        ClassGradeInfoView classGradeInfoView = new ClassGradeInfoView();
        classGradeInfoView.setCname(params.get("cname")==""?null:(String)params.get("cname"));
        //如果值不存在那么，就直接返回错误
        if (params.get("makeupGrade")==null)throw new RuntimeException();
        else classGradeInfoView.setMakeupGrade(Double.valueOf((String)params.get("makeupGrade")));

        classGradeInfoView.setSid(params.get("sid")==""?null:Integer.valueOf((Integer) params.get("sid")) );
        if (classGradeInfoView.getMakeupGrade()<60){
            classGradeInfoView.setMakeupGrade(-1.0);
            classGradeInfoView.setRebuild(1);
        }
        if (classGradeInfoMapper.updateGradeMakeup(classGradeInfoView)!=1) throw new RuntimeException();
        return  MypageHelper(params,classGradeInfoMapper.getClassGradeInfo(new ClassGradeInfoView()));
    }
}