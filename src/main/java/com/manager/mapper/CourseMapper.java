package com.manager.mapper;

import com.manager.pojo.Course;
import com.manager.pojo.Major;
import org.apache.ibatis.annotations.Mapper;

import java.util.LinkedList;

/**
 * Created by CHEN on 2020/6/16.
 */
@Mapper
public interface CourseMapper {
    LinkedList<Course> getCourse();


}
