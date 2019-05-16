package com.studentSystem.model;

public class Associate {
	private long id;
	private String username;
	private String email_address;
	private String password;
	private long create_time;
	private int person_count;
	private String recommend_word;
	private String img_url;
	private int activity;
	private String recommend;
	private long user_id;
	private int state;
	private String role;
	private int score;
	private int cost;

	public int getMax_person() {
		return max_person;
	}

	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}

	private int max_person;




	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getCreate_time() {
		return create_time;
	}

	public void setCreate_time(long create_time) {
		this.create_time = create_time;
	}

	public int getPerson_count() {
		return person_count;
	}

	public void setPerson_count(int person_count) {
		this.person_count = person_count;
	}

	public String getRecommend_word() {
		return recommend_word;
	}

	public void setRecommend_word(String recommend_word) {
		this.recommend_word = recommend_word;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public int getActivity() {
		return activity;
	}

	public void setActivity(int activity) {
		this.activity = activity;
	}


	public String getEmail_address() {
		return email_address;
	}

	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	@Override
	public String toString() {
		return "Associate{" +
				"id=" + id +
				", username='" + username + '\'' +
				", email_address='" + email_address + '\'' +
				", password='" + password + '\'' +
				", create_time=" + create_time +
				", person_count=" + person_count +
				", recommend_word='" + recommend_word + '\'' +
				", img_url='" + img_url + '\'' +
				", activity=" + activity +
				", recommend='" + recommend + '\'' +
				'}';
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}
}
