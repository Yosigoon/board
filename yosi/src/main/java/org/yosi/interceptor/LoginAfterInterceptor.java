package org.yosi.interceptor;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.yosi.dto.UserDTO;

import lombok.extern.java.Log;

@Log
public class LoginAfterInterceptor extends HandlerInterceptorAdapter {
	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		if(request.getMethod().equals("GET")) {
			return;
		}
		
		
//		String auto = request.getParameter("auto");
//		System.out.println("AUTO:" + auto);
		
		Map<String, Object> map = modelAndView.getModel();
		log.info("MAP.......... :" + map);
		
		log.info("map.get : "+map.get("userDTO"));
	
		if(map.get("userDTO") != null ) {
			
			//use session
			request.getSession().setAttribute("userDTO", map.get("userDTO"));
			
			
			
//			if(auto.equals("on")) {
//				//use cookie
//				//ÄíÅ°»ý¼º
//				UserDTO dto = (UserDTO)map.get("userDTO");
//				Cookie loginCookie = new Cookie("login", dto.getUid());
//				loginCookie.setMaxAge(60*10);
//				response.addCookie(loginCookie);
//		
//			}
//			
			response.sendRedirect("/yosi/list");
			return;
		}
		
	}
	
	

}