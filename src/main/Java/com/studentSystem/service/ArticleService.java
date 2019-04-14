package com.studentSystem.service;


import com.studentSystem.model.Article;
import com.studentSystem.model.ArticlePage;

import java.util.ArrayList;

public interface ArticleService {

	public ArrayList<Article> findAll();

	public Article findArticleById(long id);

	void insertOne(Article article);

	ArticlePage findByPage(int i);
}
