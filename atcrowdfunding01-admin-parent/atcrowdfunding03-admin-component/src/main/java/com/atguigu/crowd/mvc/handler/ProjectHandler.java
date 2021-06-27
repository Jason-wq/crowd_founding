package com.atguigu.crowd.mvc.handler;

import com.atguigu.crowd.entity.Project;
import com.atguigu.crowd.service.api.ProjectService;
import com.atguigu.crowd.util.ResultEntity;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class ProjectHandler
{
    @Autowired
    private ProjectService projectService;

    @ResponseBody
    @RequestMapping("/project/update.json")
    public ResultEntity<String> updateRole(Project project) {
        String deploydate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        project.setDeploydate(deploydate);
        projectService.updateByPrimaryKey(project);
        return ResultEntity.successWithoutData();
    }


    @ResponseBody
    @RequestMapping("/project/get/page/info.json")
    public ResultEntity<PageInfo<Project>> getPageInfo(
            @RequestParam(value="pageNum", defaultValue="1") Integer pageNum,
            @RequestParam(value="pageSize", defaultValue="5") Integer pageSize
    ) {

        // 调用Service方法获取分页数据
        PageInfo<Project> pageInfo = projectService.getPageInfo(pageNum, pageSize);

        // 封装到ResultEntity对象中返回（如果上面的操作抛出异常，交给异常映射机制处理）
        return ResultEntity.successWithData(pageInfo);
    }
}
