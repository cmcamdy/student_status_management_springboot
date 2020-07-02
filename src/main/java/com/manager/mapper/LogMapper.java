package com.manager.mapper;

import com.manager.pojo.Log;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.LinkedList;

/**
 * Created by CHEN on 2020/6/21.
 */
@Mapper
public interface LogMapper {
    LinkedList<Log> getLog(@Param("from") String from,@Param("to") String to);
}
