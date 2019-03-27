package com.studentSystem.model;

import java.util.ArrayList;
import java.util.List;

public class Comment {
	private String user_img_url;
	private String user_name;
	private long comment_id;
	private long article_id;
	private long reply_id;
	private String comment_content;
	private List<Comment> children;
	private long comment_time;



	public String getUser_img_url() {
		return user_img_url;
	}

	public void setUser_img_url(String user_img_url) {
		this.user_img_url = user_img_url;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public long getComment_id() {
		return comment_id;
	}

	public void setComment_id(long comment_id) {
		this.comment_id = comment_id;
	}

	public long getArticle_id() {
		return article_id;
	}

	public void setArticle_id(long article_id) {
		this.article_id = article_id;
	}

	public long getReply_id() {
		return reply_id;
	}

	public void setReply_id(long reply_id) {
		this.reply_id = reply_id;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public List<Comment> getChildren() {
		return children;
	}

	public void setChildren(List<Comment> children) {
		this.children=children;
	}

	public long getComment_time() {
		return comment_time;
	}

	public void setComment_time(long comment_time) {
		this.comment_time = comment_time;
	}

	@Override
	public String toString() {
		return "Comment{" +
				"user_img_url='" + user_img_url + '\'' +
				", user_name='" + user_name + '\'' +
				", comment_id=" + comment_id +
				", article_id=" + article_id +
				", reply_id=" + reply_id +
				", comment_content='" + comment_content + '\'' +
				", children=" + children +
				", comment_time=" + comment_time +
				'}';
	}
}
