package com.studentSystem.service.impl;

import com.studentSystem.dao.CommentDao;
import com.studentSystem.model.Comment;
import com.studentSystem.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	@Resource
	private CommentDao commentDao;

	@Override
	public List<Comment> findCommentById(long title_id) {
		List<Comment> list = commentDao.findCommentById(title_id);
		Map map = new HashMap();
		Iterator<Comment> iterator = list.iterator();
		List<Comment> children = new ArrayList<>();
		while (iterator.hasNext()){
			Comment comment = iterator.next();
			if(comment.getReply_id()==0){
				map.put(comment.getComment_id(),comment);
			}else {
				children.add(comment);
				iterator.remove();
			}
		}
		Iterator<Comment> iterator1 = children.iterator();
		while (iterator1.hasNext()){
			Comment comment = iterator1.next();
			Comment father = (Comment) map.get(comment.getReply_id());
			if(father.getChildren()==null){
				List<Comment> a = new ArrayList<>();
				a.add(comment);
				father.setChildren(a);
			}else{
				father.getChildren().add(comment);
			}


		}
		return list;
	}

	@Override
	public void insertOne(long comment_id, long user_id, long article_id, long reply_id, String comment_content, long time_stamp) {
		commentDao.insertOne(comment_id,user_id,article_id,reply_id,comment_content,time_stamp);
	}
}
