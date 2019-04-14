package com.studentSystem.service.impl;


import com.studentSystem.dao.ArticleDao;
import com.studentSystem.model.Article;
import com.studentSystem.model.ArticlePage;
import com.studentSystem.service.ArticleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Resource
	private ArticleDao articleDao;
	@Override
	public ArrayList<Article> findAll() {

		return articleDao.findAll();
	}

	@Override
	public Article findArticleById(long id) {
		return articleDao.findArticleById(id);
	}

	@Override
	public void insertOne(Article article) {
		articleDao.insertOne(article);
	}

	@Override
	public ArticlePage findByPage(int cur) {
		ArticlePage articlePage = new ArticlePage();
		ArrayList<Article> list =  articleDao.findByPage((cur-1)*articlePage.getPageSize(),articlePage.getPageSize());
		int totalCount = articleDao.findTotalCounts();
		articlePage.setList(list);
		articlePage.setCurPage(cur);
		articlePage.setTotalCount(totalCount);
		return articlePage;

	}
}
