package com.studentSystem.dao;

import com.studentSystem.model.Article;

import java.util.ArrayList;

public interface ArticleDao {

	public ArrayList<Article> findAll();

	Article findArticleById(long id);

	void insertOne(Article article);

	ArrayList<Article> findByPage(int cur, int pageSize);

	int findTotalCounts();

	ArrayList<Article> search(int i, int pageSize, String target);

	int searchCount(String target);
}
