package com.studentSystem.model;

import com.studentSystem.utils.OrderStatusEnum;

public class Order {
	private long id;
	private long member_id;
	private double order_cost;
	private double paid_cost;
	private long create_time;
	private long paid_time;
	private String order_status;
	private String alipay_id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getMember_id() {
		return member_id;
	}

	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}

	public double getOrder_cost() {
		return order_cost;
	}

	public void setOrder_cost(double order_cost) {
		this.order_cost = order_cost;
	}

	public double getPaid_cost() {
		return paid_cost;
	}

	public void setPaid_cost(double paid_cost) {
		this.paid_cost = paid_cost;
	}

	public long getCreate_time() {
		return create_time;
	}

	public void setCreate_time(long create_time) {
		this.create_time = create_time;
	}

	public long getPaid_time() {
		return paid_time;
	}

	public void setPaid_time(long paid_time) {
		this.paid_time = paid_time;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getAlipay_id() {
		return alipay_id;
	}

	public void setAlipay_id(String alipay_id) {
		this.alipay_id = alipay_id;
	}
}
