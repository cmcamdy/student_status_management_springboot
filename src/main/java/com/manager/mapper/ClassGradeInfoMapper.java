package com.manager.mapper;

import com.manager.pojo.ClassGradeInfoView;
import org.apache.ibatis.annotations.Mapper;

import java.util.LinkedList;

/**
 * Created by CHEN on 2020/6/16.
 */
@Mapper
public interface ClassGradeInfoMapper {


    LinkedList<ClassGradeInfoView> getClassGradeInfo(ClassGradeInfoView classGradeInfoView);

    Integer updateGrade(ClassGradeInfoView classGradeInfoView);

    LinkedList<ClassGradeInfoView> getClassGradeInfoMakeup(ClassGradeInfoView classGradeInfoView);

    Integer updateGradeMakeup(ClassGradeInfoView classGradeInfoView);
}
