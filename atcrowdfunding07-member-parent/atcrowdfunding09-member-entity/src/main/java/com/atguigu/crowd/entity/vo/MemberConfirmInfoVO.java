package com.atguigu.crowd.entity.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class MemberConfirmInfoVO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	// 易付宝账号
	private String paynum;

	// 法人身份证号
	private String cardnum;

	public MemberConfirmInfoVO(String paynum, String cardnum) {
		this.paynum = paynum;
		this.cardnum = cardnum;
	}

	public MemberConfirmInfoVO() {
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getPaynum() {
		return paynum;
	}

	public void setPaynum(String paynum) {
		this.paynum = paynum;
	}

	public String getCardnum() {
		return cardnum;
	}

	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
}