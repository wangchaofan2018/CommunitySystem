package com.studentSystem.model;

public class ActivityView {
	private long activity_id;
	private String associate_name;
	private long activity_time;
	private String activity_name;
	private String activity_content;

	public long getActivity_id() {
		return activity_id;
	}

	public void setActivity_id(long activity_id) {
		this.activity_id = activity_id;
	}

	public String getAssociate_name() {
		return associate_name;
	}

	public void setAssociate_name(String associate_name) {
		this.associate_name = associate_name;
	}

	public long getActivity_time() {
		return activity_time;
	}

	public void setActivity_time(long activity_time) {
		this.activity_time = activity_time;
	}

	public String getActivity_name() {
		return activity_name;
	}

	public void setActivity_name(String activity_name) {
		this.activity_name = activity_name;
	}

	public String getActivity_content() {
		return activity_content;
	}

	public void setActivity_content(String activity_content) {
		this.activity_content = activity_content;
	}

	@Override
	public String toString() {
		return "ActivityView{" +
				"activity_id=" + activity_id +
				", associate_name='" + associate_name + '\'' +
				", activity_time=" + activity_time +
				", activity_name='" + activity_name + '\'' +
				", activity_content='" + activity_content + '\'' +
				'}';
	}
}
