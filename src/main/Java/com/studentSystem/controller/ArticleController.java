package com.studentSystem.controller;

import com.studentSystem.model.Article;
import com.studentSystem.model.ArticlePage;
import com.studentSystem.model.Comment;
import com.studentSystem.service.ArticleService;
import com.studentSystem.service.CommentService;
import com.studentSystem.utils.GetNowTime;
import com.studentSystem.utils.StringUtil;
import com.studentSystem.utils.UUID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController {
	@Resource
	private ArticleService articleService;
	@Resource
	private CommentService commentService;
	@RequestMapping("articleContent.do")
	public ModelAndView articleContent(long title_id ){
		ModelAndView mv = new ModelAndView();
		Article article = articleService.findArticleById(title_id);
		List<Comment> comment = commentService.findCommentById(title_id);
		System.out.println(comment);

		mv.addObject("comment_list",comment);
		mv.addObject("article",article);
		mv.setViewName("article_page");
		return mv;
	}
	@RequestMapping("commentInsert.do")
	public ModelAndView commentInsert(long user_id,long article_id,long reply_id,String comment_content){
		long time_stamp = GetNowTime.getTimeStamp();
		long comment_id = UUID.getId();
		ModelAndView mv = new ModelAndView();
		commentService.insertOne(comment_id,user_id,article_id,reply_id,comment_content,time_stamp);
		Article article = articleService.findArticleById(article_id);
		List<Comment> comment = commentService.findCommentById(article_id);
		mv.addObject("comment_list",comment);
		mv.addObject("article",article);
		mv.setViewName("article_page");
		return mv;
	}
	@RequestMapping("article_create.do")
	public ModelAndView articleCreate(long associate_id, String associate_name, MultipartFile image,String article_name,String article_content){
		ModelAndView mv = new ModelAndView();
		long title_id = UUID.getId();
		Article article = new Article();
		article.setTitle_id(title_id);
		article.setUser_id(associate_id);
		article.setUsername(associate_name);
		article.setTime_stamp(GetNowTime.getTimeStamp());
		article.setArticle_name(article_name);
		article.setArticle_content(article_content);
		String recommend = null;
		if(article_content.length()>70){
		recommend = article_content.substring(0,70);
		}else {
			recommend = article_content;
		}
		recommend = recommend+"......";
		article.setRecommend(recommend);
		String localPath = "C:\\Users\\NOTEBOOK\\IdeaProjects\\StudentSystem\\src\\main\\webapp\\img\\article\\";
		String filename = null;
		String relativePath = "/img/article/";
		if(image!=null){
			String uuid = UUID.getId()+"";
			String contentType=image.getContentType();
			String suffixName = contentType.substring(contentType.indexOf("/")+1);
			filename = uuid+"."+suffixName;
			try {
				image.transferTo(new File(localPath+filename));
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("图片存储失败");
			}
		}
		String img_url = relativePath+filename;
		article.setImg_url(img_url);
		articleService.insertOne(article);
		ArrayList list = articleService.findAll();
		mv.addObject("list",list);
		mv.setViewName("home");
		return mv;
	}
	@RequestMapping("search.do")
	public String returnHome(Model model,String target){
		int p =1;
		ArticlePage articlePage = articleService.searchByTarget(target,p);
		model.addAttribute("articlePage",articlePage);
		return "home";
	}
}
