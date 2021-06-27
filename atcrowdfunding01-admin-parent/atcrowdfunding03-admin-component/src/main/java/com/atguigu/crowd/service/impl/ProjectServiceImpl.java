package com.atguigu.crowd.service.impl;

import com.atguigu.crowd.entity.Project;
import com.atguigu.crowd.mapper.ProjectMapper;
import com.atguigu.crowd.service.api.ProjectService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService
{
    @Autowired
    private ProjectMapper projectMapper;


    @Override
    public PageInfo<Project> getPageInfo(Integer pageNum, Integer pageSize) {

        // 1.开启分页功能
        PageHelper.startPage(pageNum, pageSize);

        // 2.执行查询
        List<Project> projectList = projectMapper.getAllProject();

        // 3.封装为PageInfo对象返回
        return new PageInfo<>(projectList);
    }

    @Override
    public List<Project> getAllProject()
    {
        return projectMapper.getAllProject();
    }

    @Override
    public void updateByPrimaryKey(Project project)
    {
        projectMapper.updateByPrimaryKey(project);
    }
}
