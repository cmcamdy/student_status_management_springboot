package com.manager.service;

import com.manager.mapper.StudentInfoMapper;
import com.manager.mapper.StudentInfoWithCreditMapper;
import com.manager.pojo.*;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/4.
 */
@Service
public class StudentInfoService {

    @Autowired
    StudentInfoMapper studentInfoMapper;

    @Autowired
    MajorService majorService;




    @Autowired
    StudentInfoWithCreditMapper studentInfoWithCreditMapper;


    public static Map<String,Object> MypageHelper(Map<String,Object> params,List<StudentInfoView> data){
        Map<String,Object> res = new HashMap<>();
        int from =((Integer)params.get("pageIndex")-1)*((Integer)params.get("pageSize"));
        int to = ((Integer)params.get("pageIndex"))*((Integer)params.get("pageSize"));
        //小小地实现一下分页，就不用pagehelper了
        res.put("data",data.subList(from,to>data.size()?data.size():to));
        res.put("pagetotal",data.size());
        return  res;
    }



    public  Map<String, Object>  getStudentInfoWithCredit(Map<String,Object> params){
        Map<String,Object> res = new HashMap<>();
        int from =((Integer)params.get("pageIndex")-1)*((Integer)params.get("pageSize"));
        int to = ((Integer)params.get("pageIndex"))*((Integer)params.get("pageSize"));
        //小小地实现一下分页，就不用pagehelper了
        List<StudentInfoWithCreditView> studentInfoWithCreditView = studentInfoWithCreditMapper.getStudentInfoByName(null);
        res.put("data",studentInfoWithCreditView.subList(from,to>studentInfoWithCreditView.size()?studentInfoWithCreditView.size():to));
        res.put("pagetotal",studentInfoWithCreditView.size());
        System.out.println(res);
        return  res;
    }

    /**
     * 查询学生信息
     * @param params
     * @return
     */
    public Map<String, Object> searchStudentInfo(Map<String, Object> params) {
        StudentInfoView studentInfoView = new StudentInfoView( );
        studentInfoView.setName((String) params.get("name")==""?null:(String) params.get("name"));
        studentInfoView.set_class((String) params.get("major")==""?null:(String) params.get("major"));
//        System.out.println(studentInfoView);
        return MypageHelper(params,studentInfoMapper.getStudentInfoByNameOrMajor(studentInfoView));
    }
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public boolean updateStudentInfo(Map<String, Object> params) {
        StudentInfoView studentInfoView = new StudentInfoView((Integer) params.get("sid"),
                                                                (String)params.get("name"),
                                                                (String)params.get("class"),
                                                                (String)params.get("address"),
                                                                (String)params.get("other"));
        boolean tag = false;
        if (params.get("name")!=null){
            Student student = new Student((Integer)params.get("sid"),(String)params.get("name"));
            if (studentInfoMapper.updateStudent(student)==0) throw new RuntimeException();
            tag = true;
        }
        if (params.get("address")!=null||params.get("other")!=null){
            StudentInfo studentInfo = new StudentInfo();
            studentInfo.setSid((Integer)params.get("sid"));
            studentInfo.setOther((String) params.get("other"));
            studentInfo.setAddress((String) params.get("address"));
            System.out.println(studentInfo );
            if (studentInfoMapper.updateStudentInfo(studentInfo)==0) throw new RuntimeException();
            tag = true;
        }
        return tag;
    }
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
        public Map<String, Object> addNewStudent(Map<String, Object> params) {
            Student student = new Student();
            student.setName((String)params.get("name")==null?"缺省":(String)params.get("name"));
            student.setPassword("123456");
            studentInfoMapper.addNewStudent(student);
            if (student.getSid()==null)throw new RuntimeException();
            //如果内存中专业map为空，初始化一个
            if (MajorService.majorMap.isEmpty()) majorService.getMajor();
            StudentInfo studentInfo = new StudentInfo();
            studentInfo.setSid(student.getSid());
            studentInfo.setIdnum(params.get("idnum")==null?"缺省":(String)params.get("idnum"));
            studentInfo.setMajor(params.get("major")==null?0:MajorService.majorMap.get(params.get("major")).getId());
            studentInfo.set_class(params.get("class")==null?0:Integer.valueOf((String) params.get("class")));
            studentInfo.setOther(params.get("other")==null?"缺省":(String) params.get("other"));
            studentInfo.setAddress(params.get("address")==null?"缺省":(String) params.get("address"));
//        System.out.println("sid====="+student.getSid());
            studentInfoMapper.addStudentInfo(studentInfo);

        return MypageHelper(params,studentInfoMapper.getStudentInfoByNameOrMajor(new StudentInfoView( )));
    }
}
