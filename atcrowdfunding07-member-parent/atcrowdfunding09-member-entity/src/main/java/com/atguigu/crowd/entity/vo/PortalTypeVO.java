package com.atguigu.crowd.entity.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class PortalTypeVO {
	
	private Integer id;
	private String name;
	private String remark;
	
	private List<PortalProjectVO> portalProjectVOList;

	public PortalTypeVO() {
	}

	public PortalTypeVO(Integer id, String name, String remark, List<PortalProjectVO> portalProjectVOList) {
		this.id = id;
		this.name = name;
		this.remark = remark;
		this.portalProjectVOList = portalProjectVOList;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public List<PortalProjectVO> getPortalProjectVOList() {
		return portalProjectVOList;
	}

	public void setPortalProjectVOList(List<PortalProjectVO> portalProjectVOList) {
		this.portalProjectVOList = portalProjectVOList;
	}
}
