package com.manager.service;

import com.manager.mapper.LogMapper;
import com.manager.pojo.ClassGradeInfoView;
import com.manager.pojo.Log;
import com.sun.org.apache.bcel.internal.generic.RETURN;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by CHEN on 2020/6/21.
 */
@Service
public class LogService {

    @Autowired
    LogMapper logMapper;


    public static Map<String,Object> MypageHelper(Map<String,Object> params,List<Log> data){
        Map<String,Object> res = new HashMap<>();
        int from =((Integer)params.get("pageIndex")-1)*((Integer)params.get("pageSize"));
        int to = ((Integer)params.get("pageIndex"))*((Integer)params.get("pageSize"));
        //小小地实现一下分页，就不用pagehelper了
        res.put("data",data.subList(from,to>data.size()?data.size():to));
        res.put("pagetotal",data.size());
        return  res;
    }

    public Map<String,Object> getLog(Map<String,Object> params){


        String from = ((String)params.get("from")).substring(0,10);

        String to = ((String)params.get("to")).substring(0,10);
        System.out.println(from );
        LinkedList<Log> data = logMapper.getLog(from, to);

        return MypageHelper(params,data);
    }



}
