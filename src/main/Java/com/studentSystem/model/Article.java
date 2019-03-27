package com.studentSystem.model;

public class Article {
	private long title_id;
	private long user_id;
	private String username;
	private long time_stamp;
	private int like_count;
	private int reply_count;
	private String article_content;
	private String article_name;
	private String img_url;
	private String recommend;
	public long getUser_id() {
		return user_id;
	}

	public String getUsername() {
		return username;
	}



	public int getLike_count() {
		return like_count;
	}

	public int getReply_count() {
		return reply_count;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setTitle_id(long title_id) {
		this.title_id = title_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public void setUsername(String username) {
		this.username = username;
	}



	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public long getTitle_id() {
		return title_id;
	}

	public String getArticle_name() {
		return article_name;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setArticle_name(String article_name) {
		this.article_name = article_name;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	@Override
	public String toString() {
		return "Article{" +
				"title_id=" + title_id +
				", user_id=" + user_id +
				", username='" + username + '\'' +
				", time_stamp=" + time_stamp +
				", like_count=" + like_count +
				", reply_count=" + reply_count +
				", article_content='" + article_content + '\'' +
				", article_name='" + article_name + '\'' +
				", img_url='" + img_url + '\'' +
				", recommend='" + recommend + '\'' +
				'}';
	}

	public long getTime_stamp() {
		return time_stamp;
	}

	public void setTime_stamp(long time_stamp) {
		this.time_stamp = time_stamp;
	}
}
