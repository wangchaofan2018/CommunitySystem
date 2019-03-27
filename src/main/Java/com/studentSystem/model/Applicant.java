package com.studentSystem.model;

public class Applicant {
	private long apply_id;
	private long user_id;
	private long associate_id;
	private String user_introduce;
	private String user_reason;
	private int state;
	private long time_stamp;

	public long getApply_id() {
		return apply_id;
	}

	public void setApply_id(long apply_id) {
		this.apply_id = apply_id;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getAssociate_id() {
		return associate_id;
	}

	public void setAssociate_id(long associate_id) {
		this.associate_id = associate_id;
	}

	public String getUser_introduce() {
		return user_introduce;
	}

	public void setUser_introduce(String user_introduce) {
		this.user_introduce = user_introduce;
	}

	public String getUser_reason() {
		return user_reason;
	}

	public void setUser_reason(String user_reason) {
		this.user_reason = user_reason;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Applicant{" +
				"apply_id=" + apply_id +
				", user_id=" + user_id +
				", associate_id=" + associate_id +
				", user_introduce='" + user_introduce + '\'' +
				", user_reason='" + user_reason + '\'' +
				", state=" + state +
				'}';
	}

	public long getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(long time_stamp) {
		this.time_stamp = time_stamp;
	}
}
