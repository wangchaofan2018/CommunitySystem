package com.studentSystem.service;

import com.studentSystem.model.Order;

public interface AlipayService {
	void insertOrder(Order o);

	Order findOrderById(long order_id);

	void updateOrderStatus(long parseLong, String trade_no, double parseInt, long timeStamp);
}
