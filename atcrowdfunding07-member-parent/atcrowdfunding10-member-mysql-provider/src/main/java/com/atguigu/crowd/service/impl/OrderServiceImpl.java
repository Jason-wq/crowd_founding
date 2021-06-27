package com.atguigu.crowd.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.atguigu.crowd.entity.po.*;
import com.atguigu.crowd.mapper.ProjectPOMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atguigu.crowd.entity.vo.AddressVO;
import com.atguigu.crowd.entity.vo.OrderProjectVO;
import com.atguigu.crowd.entity.vo.OrderVO;
import com.atguigu.crowd.mapper.AddressPOMapper;
import com.atguigu.crowd.mapper.OrderPOMapper;
import com.atguigu.crowd.mapper.OrderProjectPOMapper;
import com.atguigu.crowd.service.api.OrderService;

@Service
@Transactional(readOnly = true)
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderProjectPOMapper orderProjectPOMapper;
	
	@Autowired
	private OrderPOMapper orderPOMapper;
	
	@Autowired
	private AddressPOMapper addressPOMapper;

	@Autowired
	private ProjectPOMapper projectPOMapper;

	private Integer projectid;

	@Override
	public OrderProjectVO getOrderProjectVO(Integer projectId, Integer returnId) {
		projectid=projectId;
		return orderProjectPOMapper.selectOrderProjectVO(returnId);
	}

	@Override
	public List<AddressVO> getAddressVOList(Integer memberId) {
		
		AddressPOExample example = new AddressPOExample();
		
		example.createCriteria().andMemberIdEqualTo(memberId);
		
		List<AddressPO> addressPOList = addressPOMapper.selectByExample(example);
		
		List<AddressVO> addressVOList = new ArrayList<AddressVO>();
		
		for (AddressPO addressPO : addressPOList) {
			AddressVO addressVO = new AddressVO();
			BeanUtils.copyProperties(addressPO, addressVO);
			
			addressVOList.add(addressVO);
		}
		
		return addressVOList;
	}
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)
	@Override
	public void saveAddress(AddressVO addressVO) {
		
		AddressPO addressPO = new AddressPO();
		
		BeanUtils.copyProperties(addressVO, addressPO);
		
		addressPOMapper.insert(addressPO);
		
	}

	@Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)
	@Override
	public void saveOrder(OrderVO orderVO) {
		
		OrderPO orderPO = new OrderPO();
		
		BeanUtils.copyProperties(orderVO, orderPO);
		
		OrderProjectPO orderProjectPO = new OrderProjectPO();
		
		BeanUtils.copyProperties(orderVO.getOrderProjectVO(), orderProjectPO);
		
		// 保存orderPO自动生成的主键是orderProjectPO需要用到的外键
		orderPOMapper.insert(orderPO);

		int orderAmount=new Double(orderPO.getOrderAmount()).intValue();
		ProjectPO projectPO_temp=new ProjectPO();
		projectPO_temp.setSupportmoney(orderAmount);
		projectPO_temp.setSupporter(1);
		projectPO_temp.setId(projectid);



		
		// 从orderPO中获取orderId
		Integer id = orderPO.getId();
		
		// 将orderId设置到orderProjectPO
		orderProjectPO.setOrderId(id);
		
		orderProjectPOMapper.insert(orderProjectPO);

		//更新支持人数
		projectPOMapper.updateByPrimaryKeySelective(projectPO_temp);
	}

}
