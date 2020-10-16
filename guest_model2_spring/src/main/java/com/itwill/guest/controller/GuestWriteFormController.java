package com.itwill.guest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class GuestWriteFormController implements Controller{
	public ModelAndView handleRequest(HttpServletRequest request,
								HttpServletResponse response) {
		/********************guest_write_form.do*****************/
		String forwardPath="forward:/WEB-INF/views/guest_write_form.jsp";
		ModelAndView mv=new ModelAndView();
		mv.setViewName(forwardPath);
		return mv;
	}
}
