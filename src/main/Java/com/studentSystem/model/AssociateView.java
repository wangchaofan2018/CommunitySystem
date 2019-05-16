package com.studentSystem.model;

public class AssociateView {
	private long associate_id;
	private String associate_name;
	private String recommend;
	private String recommend_word;
	private String username;
	private String email;
	private String img_url;
	private int person_count;

	public int getMax_person() {
		return max_person;
	}

	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}

	private int max_person;

	public long getAssociate_id() {
		return associate_id;
	}

	public void setAssociate_id(long associate_id) {
		this.associate_id = associate_id;
	}

	public String getAssociate_name() {
		return associate_name;
	}

	public void setAssociate_name(String associate_name) {
		this.associate_name = associate_name;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	public String getRecommend_word() {
		return recommend_word;
	}

	public void setRecommend_word(String recommend_word) {
		this.recommend_word = recommend_word;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "AssociateView{" +
				"associate_id=" + associate_id +
				", associate_name='" + associate_name + '\'' +
				", recommend='" + recommend + '\'' +
				", recommend_word='" + recommend_word + '\'' +
				", username='" + username + '\'' +
				'}';
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public int getPerson_count() {
		return person_count;
	}

	public void setPerson_count(int person_count) {
		this.person_count = person_count;
	}
}
