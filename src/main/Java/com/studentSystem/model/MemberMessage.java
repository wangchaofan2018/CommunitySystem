package com.studentSystem.model;

public class MemberMessage {
	private long member_id;
	private String user_number;
	private String username;
	private int active_number;
	private int state;

	public long getMember_id() {
		return member_id;
	}

	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}

	public String getUser_number() {
		return user_number;
	}

	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getActive_number() {
		return active_number;
	}

	public void setActive_number(int active_number) {
		this.active_number = active_number;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "MemberMessage{" +
				"member_id=" + member_id +
				", user_number=" + user_number +
				", username='" + username + '\'' +
				", active_number=" + active_number +
				", state=" + state +
				'}';
	}
}
