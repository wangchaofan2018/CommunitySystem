package com.studentSystem.dao;

import com.studentSystem.model.Article;

import java.util.ArrayList;

public interface ArticleDao {

	public ArrayList<Article> findAll();

	Article findArticleById(long id);

	void insertOne(Article article);
}
