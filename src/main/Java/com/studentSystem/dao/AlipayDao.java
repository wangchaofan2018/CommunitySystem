package com.studentSystem.dao;

import com.studentSystem.model.Order;

public interface AlipayDao {

	void insertOrder(Order o);

	Order findOrderById(long order_id);

	void updateOrderStatus(long parseLong, double parseInt, long timeStamp, String trade_no);
}
