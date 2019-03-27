package com.studentSystem.service;

import com.studentSystem.model.Comment;

import java.util.List;

public interface CommentService {

	List<Comment> findCommentById(long title_id);

	void insertOne(long comment_id, long user_id, long article_id, long reply_id, String comment_content, long time_stamp);
}
