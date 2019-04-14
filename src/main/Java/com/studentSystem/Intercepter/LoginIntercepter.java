package com.studentSystem.Intercepter;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@Component
public class LoginIntercepter implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
		HttpSession session = httpServletRequest.getSession();
		if(session.getAttribute("user")!=null)
			return true;
		else if (httpServletRequest.getRequestURI().indexOf("/user/login.do")!=-1||httpServletRequest.getRequestURI().indexOf("/user/register.do")!=-1||httpServletRequest.getRequestURI().indexOf("/user/register_page.do")!=-1||httpServletRequest.getRequestURI().indexOf("/user/checkUser.do")!=-1){
			System.out.println("pass");
			return true;
		}
		else{
			httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/user/login.do");
			return false;
		}
	}

	@Override
	public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

	}
}
