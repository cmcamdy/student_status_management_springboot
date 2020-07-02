package com.manager.mapper;

import com.manager.pojo.Major;
import org.apache.ibatis.annotations.Mapper;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by CHEN on 2020/6/3.
 */
@Mapper
public interface MajorMapper {

    //    Major getMajor(String id);
    LinkedList<Major> getMajor();

//    LinkedList<List<?>> testgetMajor();
}
