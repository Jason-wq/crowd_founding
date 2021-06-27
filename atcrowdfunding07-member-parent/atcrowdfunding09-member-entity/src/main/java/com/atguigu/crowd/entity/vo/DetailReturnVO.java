package com.atguigu.crowd.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class DetailReturnVO {
	
	// 回报信息主键
	private Integer returnId;
	
	// 当前档位需支持的金额
	private Integer supportMoney;
	
	// 单笔限购，取值为0时无限额，取值为1时有限额
	private Integer signalPurchase;
	
	// 具体限额数量
	private Integer purchase;
	
	// 当前该档位支持者数量
	private Integer supproterCount;
	
	// 运费，取值为0时表示包邮
	private Integer freight;
	
	// 众筹成功后多少天发货
	private Integer returnDate;
	
	// 回报内容
	private String content;

	public DetailReturnVO() {
	}

	public DetailReturnVO(Integer returnId, Integer supportMoney, Integer signalPurchase, Integer purchase, Integer supproterCount, Integer freight, Integer returnDate, String content) {
		this.returnId = returnId;
		this.supportMoney = supportMoney;
		this.signalPurchase = signalPurchase;
		this.purchase = purchase;
		this.supproterCount = supproterCount;
		this.freight = freight;
		this.returnDate = returnDate;
		this.content = content;
	}

	public Integer getReturnId() {
		return returnId;
	}

	public void setReturnId(Integer returnId) {
		this.returnId = returnId;
	}

	public Integer getSupportMoney() {
		return supportMoney;
	}

	public void setSupportMoney(Integer supportMoney) {
		this.supportMoney = supportMoney;
	}

	public Integer getSignalPurchase() {
		return signalPurchase;
	}

	public void setSignalPurchase(Integer signalPurchase) {
		this.signalPurchase = signalPurchase;
	}

	public Integer getPurchase() {
		return purchase;
	}

	public void setPurchase(Integer purchase) {
		this.purchase = purchase;
	}

	public Integer getSupproterCount() {
		return supproterCount;
	}

	public void setSupproterCount(Integer supproterCount) {
		this.supproterCount = supproterCount;
	}

	public Integer getFreight() {
		return freight;
	}

	public void setFreight(Integer freight) {
		this.freight = freight;
	}

	public Integer getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Integer returnDate) {
		this.returnDate = returnDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
