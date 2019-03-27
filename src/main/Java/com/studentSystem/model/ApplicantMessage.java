package com.studentSystem.model;

public class ApplicantMessage {
	private String associate_name;
	private long time_stamp;
	private int state;



	public String getAssociate_name() {
		return associate_name;
	}

	public void setAssociate_name(String associate_name) {
		this.associate_name = associate_name;
	}

	public long getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(long time_stamp) {
		this.time_stamp = time_stamp;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "ApplicantMessage{" +
				", associate_name='" + associate_name + '\'' +
				", time_stamp=" + time_stamp +
				", state=" + state +
				'}';
	}
}
