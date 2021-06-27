package com.atguigu.crowd.service.api;

import com.atguigu.crowd.entity.Project;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ProjectService
{
    PageInfo<Project> getPageInfo(Integer pageNum, Integer pageSize);
    List<Project> getAllProject();
    void updateByPrimaryKey(Project project);
}
