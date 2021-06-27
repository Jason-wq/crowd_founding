package com.atguigu.crowd.entity;

public class Project
{
    private int id;
    private String username;
    private String project_name;
    private int money;
    private int day;
    private String createdate;
    private String deploydate;
    private int status;

    public Project(int id, String username, String project_name, int money, int day, String createdate, String deploydate, int status) {
        this.id = id;
        this.username = username;
        this.project_name = project_name;
        this.money = money;
        this.day = day;
        this.createdate = createdate;
        this.deploydate = deploydate;
        this.status = status;
    }

    public Project() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getDeploydate() {
        return deploydate;
    }

    public void setDeploydate(String deploydate) {
        this.deploydate = deploydate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
