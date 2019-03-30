package com.studentSystem.service.impl;

import com.studentSystem.dao.AlipayDao;
import com.studentSystem.model.Order;
import com.studentSystem.service.AlipayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("alipayService")
public class AlipayServiceImpl implements AlipayService {
	@Autowired
	private AlipayDao alipayDao;

	@Override
	public void insertOrder(Order o) {
		alipayDao.insertOrder(o);
	}

	@Override
	public Order findOrderById(long order_id) {
		return alipayDao.findOrderById(order_id);
	}

	@Override
	public void updateOrderStatus(long parseLong, String trade_no, double parseInt, long timeStamp) {
		alipayDao.updateOrderStatus(parseLong,parseInt,timeStamp,trade_no);
	}
}
