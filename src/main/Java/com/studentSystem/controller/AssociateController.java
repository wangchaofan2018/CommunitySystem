package com.studentSystem.controller;

import com.studentSystem.model.*;
import com.studentSystem.service.AssociateService;
import com.studentSystem.utils.GetNowTime;
import com.studentSystem.utils.UUID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("associate")
public class AssociateController {
	@Resource
	private AssociateService associateService;
	@RequestMapping("introduce.do")
	public ModelAndView findAssociateById(long id){
		ModelAndView mv = new ModelAndView();
		Associate associate = associateService.findAssociateById(id);
		mv.addObject("associate",associate);
		mv.setViewName("associate_introduce");
		return mv;
	}
	@RequestMapping("manager.do")
	public String manager(){
		return "manager_center";
	}
	@RequestMapping("create_page.do")
	public String create_page(){
		return "associate_create";
	}
	@RequestMapping("create_associate.do")
	public String insert_associate(String username,String email_address,String password,String create_time,String recommend_word,String recommend,MultipartFile image,long user_id){

		String localPath = "C:\\Users\\NOTEBOOK\\IdeaProjects\\StudentSystem\\src\\main\\webapp\\img\\associate\\";
		String filename = null;
		String relativePath = "/img/associate/";
		System.out.println(image);
		if(image!=null){
			String uid = UUID.getId()+"";
			String contentType = image.getContentType();
			String suffixName = contentType.substring(contentType.indexOf("/")+1);
			filename = uid+"."+suffixName;
			try {
				image.transferTo(new File(localPath+filename));
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("保存图片出错");
			}
			String img_url = relativePath+filename;
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
			Date date = null;
			try {
				date = simpleDateFormat.parse(create_time);
			} catch (ParseException e) {
				e.printStackTrace();
				System.out.println("时间转换失败");
			}
			long time_stamp = date.getTime()/1000;
			long id = UUID.getId();
			associateService.insertOne(id,username,email_address,password,time_stamp,recommend_word,img_url,recommend,user_id);

		}else{
			System.out.println("图片为空 请重试");
		}
		return "manager_center";
	}
	@RequestMapping("admin_isAgree.do")
	public ModelAndView updateAssociateState(long id,boolean flag,String email,String username,String associate_name){
		System.out.println(id+" "+flag);
		if(flag){
			associateService.updateState(id,email,username,associate_name);
		}else {
			associateService.deleteOne(id,email,username,associate_name);
		}
		ModelAndView mv = new ModelAndView();
		List<AssociateView> list = associateService.findUnsubscribedAssociate();
		mv.addObject("list",list);
		mv.setViewName("admin_associate_list");
		return mv;
	}
	@RequestMapping("recommend.do")
	public String recommend(Model model){
		List<AssociateView> list = associateService.findSubscribedAssociate();
		model.addAttribute("list",list);
		model.addAttribute("length",list.size());
		return "recommend";
	}
	@RequestMapping("apply.do")
	public String apply(long user_id,long associate_id,String user_introduce,String user_reason,Model model){
		int state = 0;
		long apply_id = UUID.getId();
		long time_stamp = GetNowTime.getTimeStamp();
		Applicant applicant = new Applicant();
		applicant.setApply_id(apply_id);
		applicant.setUser_id(user_id);
		applicant.setAssociate_id(associate_id);
		applicant.setUser_introduce(user_introduce);
		applicant.setUser_reason(user_reason);
		applicant.setState(state);
		applicant.setTime_stamp(time_stamp);
		associateService.insertApplyMessage(applicant);
		List<AssociateView> list = associateService.findSubscribedAssociate();
		model.addAttribute("list",list);
		model.addAttribute("length",list.size());
		return "recommend";
	}
	@RequestMapping("my_apply.do")
	public ModelAndView getMyApply(long user_id){
		ModelAndView mv = new ModelAndView();
		List<ApplicantMessage> list1 = associateService.findMyApplyById(user_id);
		List<ApplicantMessage> list2 = associateService.findMyAssociateById(user_id);
		List<AssociateScoreView> list3 = associateService.findScoreById(user_id);
		int total_score = list3.stream().collect(Collectors.summingInt(m->m.getScore()));
		mv.addObject("list1",list1);
		mv.addObject("list2",list2);
		mv.addObject("list3",list3);
		mv.addObject("total_score",total_score);
		mv.setViewName("my_apply");
		return mv;
	}
	@RequestMapping("apply_is_agree.do")
	public ModelAndView dealWithApply(boolean flag, long apply_id, HttpServletRequest request){
		Associate associate = (Associate)request.getSession().getAttribute("user");
		ModelAndView mv = new ModelAndView();
		if(flag){
			associateService.updateApplyWithY(apply_id);
		}else {
			associateService.updateApplyWithN(apply_id);
		}
		List<AssociateMessage> list = associateService.findApplyMessage(associate.getId());
		mv.addObject("list",list);
		mv.setViewName("associate_manager");
		return mv;

	}
	@RequestMapping("article_create_page.do")
	public String getArticlePage(){
		return "article_create";
	}

}
