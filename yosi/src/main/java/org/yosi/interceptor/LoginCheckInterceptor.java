package org.yosi.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;
import org.yosi.dto.UserDTO;
import org.yosi.service.UserService;

import lombok.extern.java.Log;

@Log
public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	private UserService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		log.info("Login check prehandle...");
		
		boolean useSession = request.getSession().getAttribute("userDTO") != null?true:false;
		
		
		if(useSession) {
			log.info("current user use session");
			return true;
			
		}
		
//		Cookie loginCookie = WebUtils.getCookie(request, "login");
//		
//		boolean useCookie = loginCookie != null?true:false;
//		
//		if(useCookie) {
//			
//			UserDTO dto = service.login(loginCookie.getValue());
//			request.getSession().setAttribute("userDTO", dto);
//			return true;
//		}
		
		response.sendRedirect("/yosi/login");
		return false;
		
	}
	
	
	

}
