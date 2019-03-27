package com.studentSystem.model;

public class AssociateMessage {
	private long apply_id;
	private String username;
	private long time_stamp;
	private String user_introduce;
	private String user_reason;

	public long getApply_id() {
		return apply_id;
	}

	public void setApply_id(long apply_id) {
		this.apply_id = apply_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public long getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(long time_stamp) {
		this.time_stamp = time_stamp;
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

	@Override
	public String toString() {
		return "AssociateMessage{" +
				"apply_id=" + apply_id +
				", username='" + username + '\'' +
				", time_stamp=" + time_stamp +
				", user_introduce='" + user_introduce + '\'' +
				", user_reason='" + user_reason + '\'' +
				'}';
	}
}
