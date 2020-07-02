package com.manager.service;

import com.manager.mapper.MajorMapper;
import com.manager.pojo.Major;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

/**
 * Created by CHEN on 2020/6/3.
 */
@Service
public class MajorService {

    @Autowired
    MajorMapper mapper;

    public static HashMap<String,Major> majorMap = new HashMap<>();

    public  HashMap getMajor(){
        if (majorMap.isEmpty()){
            for (Major major: mapper.getMajor()
                    ) {
                System.out.println(major);
                majorMap.put(major.getName(),major);
            }
        }
//        System.out.println(mapper.testgetMajor() );
        return  majorMap;
    }
}
