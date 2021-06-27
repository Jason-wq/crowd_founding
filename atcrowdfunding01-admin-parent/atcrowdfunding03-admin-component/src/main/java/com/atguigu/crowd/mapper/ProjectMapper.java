package com.atguigu.crowd.mapper;

import com.atguigu.crowd.entity.Project;

import java.util.List;

public interface ProjectMapper
{
     List<Project> getAllProject();
     void updateByPrimaryKey(Project project);
}
