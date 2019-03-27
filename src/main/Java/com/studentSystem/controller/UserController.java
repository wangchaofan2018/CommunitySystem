package com.studentSystem.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.studentSystem.model.*;
import com.studentSystem.service.ArticleService;
import com.studentSystem.service.AssociateService;
import com.studentSystem.service.UserService;
import com.studentSystem.utils.ConfirmEmail;
import com.studentSystem.utils.GetIPAddress;
import com.studentSystem.utils.GetNowTime;
import com.studentSystem.utils.UUID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;
    @Resource
	private ArticleService articleService;
    @Resource
	private AssociateService associateService;
    @RequestMapping("/showUser.do")
    public void selectUser(HttpServletRequest request, HttpServletResponse response)throws IOException{
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        long userId = Long.parseLong(request.getParameter("id"));
        User user = this.userService.selectUser(userId);
        ObjectMapper mapper = new ObjectMapper();
        response.getWriter().write(mapper.writeValueAsString(user));
        response.getWriter().close();
    }
    @RequestMapping("/register.do")
    public String insertUser(String username,String address,String password,HttpServletRequest request, HttpServletResponse response){

		String email = address;
		String role = "normal";
		long id = UUID.getId();
		String regIp = GetIPAddress.getIp(request);
		Date regTime = GetNowTime.getTime();
		int status = 0;
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setRegIp(regIp);
		user.setRegTime(regTime);
		user.setStatus(status);
		user.setRole(role);
		System.out.println(user);
		String local_url = request.getContextPath();
		String url = local_url+"/user/active.do?code="+user.getId();
		this.userService.insertUser(user,url,user.getEmail(),user.getUsername());
		return "login";

//		ConfirmEmail let = new ConfirmEmail();
//		let.send(email,"dd");
    }
	@RequestMapping("checkUser.do")
    public ModelAndView checkUser(String username,String password,HttpServletRequest request){
		User user = null;
		user = this.userService.searchUserByName(username);
		ModelAndView mv = new ModelAndView();
		ArrayList list = articleService.findAll();
		if(user==null){
			mv.setViewName("login");
			mv.addObject("Error","用户名不存在");
		}else if(!user.getPassword().equals(password)){
			mv.setViewName("login");
			mv.addObject("Error","密码错误");
		}else{
			request.getSession().setAttribute("user",user);
			request.setAttribute("list",list);

			mv.setViewName("home");
		}
		return mv;
	}
	@RequestMapping("inform.do")
	public String userInform(){
    	return "inform";
	}
	@RequestMapping("passwordUpdate.do")
	public void userUpdatePassword(String email,String password,HttpServletRequest request,HttpServletResponse response){
		System.out.println(email);
		System.out.println(password);
    	this.userService.updateUserByEmail(email,password);
		request.getSession().removeAttribute("user");
		try {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("重定向异常");
		}
	}
	@RequestMapping("userMessageUpdate.do")
	public String userUpdateMessage(String email, MultipartFile image, String radio1, String age, String phone_number, String address, String sign,String student_number,HttpServletRequest request){

		String localPath = "C:\\Users\\NOTEBOOK\\IdeaProjects\\StudentSystem\\src\\main\\webapp\\img\\person\\";
		String filename = null;
		String relativePath = "/img/person/";
		if(image!=null){
			String uuid = UUID.getId()+"";
			String contentType=image.getContentType();
			String suffixName = contentType.substring(contentType.indexOf("/")+1);
			filename = uuid+"."+suffixName;
			System.out.println(filename);
			try {
				image.transferTo(new File(localPath+filename));
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("图片存储失败");
			}
		}
		String img_url = relativePath+filename;
		boolean sex = false;
		if (radio1.equals("0")){
			sex=true;//true为男 false为女
		}
		userService.updateUserMessageByEmail(email,img_url,sex,age,phone_number,address,sign,student_number);
		System.out.println("用户信息已更新");
		request.getSession().removeAttribute("user");
		return "login";

	}
	@RequestMapping("login.do")
	public String loginPage(){
    	return "login";
	}
	@RequestMapping("home.do")
	public String returnHome(Model model){
		ArrayList list = articleService.findAll();
		model.addAttribute("list",list);
    	return "home";
	}
	@RequestMapping("logout.do")
	public String logoutPage(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.removeAttribute("user");

		return "login";
	}



	@RequestMapping("admin_login_page.do")
	public String admin_login_page(){
    	return "admin_login";
	}

	@RequestMapping("checkAdmin.do")
	public ModelAndView admin_check(String username,String password,HttpServletRequest request){
    	ModelAndView mv = new ModelAndView();
		Admin admin = new Admin();
    	if(userService.checkAdmin(username,password)){
    		admin.setUsername(username);
    		admin.setPassword(password);
    		admin.setRole("admin");
    		request.getSession().setAttribute("user",admin);
			List<AssociateView> list = associateService.findUnsubscribedAssociate();
			mv.addObject("list",list);
    		mv.setViewName("admin_associate_list");
		}else{
			mv.addObject("error","用户名或密码错误");
			mv.setViewName("admin_login");
		}
		return mv;
	}

	@RequestMapping("active.do")
	public String userActive(String code){
    	long id = Long.parseLong(code);
    	userService.updateUserById(id);
    	return "is_actived";
	}
	@RequestMapping("associate_login_page.do")
	public String associateLoginPage(){
    	return "associate_login";
	}
	@RequestMapping("checkAssociate")
	public ModelAndView checkAssociate(String email_address,String password,HttpServletRequest request){
    	ModelAndView mv = new ModelAndView();
    	Associate associate = associateService.findAssociateByEmail(email_address);
    	String dbpassword = associate.getPassword();
    	if(password.equals(dbpassword)){
    		request.getSession().setAttribute("user",associate);
    		List<AssociateMessage> list = associateService.findApplyMessage(associate.getId());
    		mv.addObject("list",list);
    		mv.setViewName("associate_manager");
		}else {
    		mv.addObject("error","账号或密码错误");
    		mv.setViewName("associate_login");
		}
		return mv;
	}

}
