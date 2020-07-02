package com.manager.service;

import com.manager.mapper.CourseMapper;
import com.manager.pojo.Course;
import com.manager.pojo.Major;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

/**
 * Created by CHEN on 2020/6/16.
 */
@Service
public class CourseService {

    @Autowired
    CourseMapper courseMapper;


    public static HashMap<String,Course> courseMap = new HashMap<>();


    public void getCourseMap(){
        for (Course course: courseMapper.getCourse()
                ) {
            System.out.println(course);
            courseMap.put(course.getCname(),course);
        }
    }


}
