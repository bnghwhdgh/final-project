package com.itwill.unishop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.unishop.domain.Jumun;
import com.itwill.unishop.domain.Member;
import com.itwill.unishop.exception.MemberNotFoundException;
import com.itwill.unishop.exception.PasswordMismatchException;
import com.itwill.unishop.service.JumunService;
import com.itwill.unishop.service.MemberService;

@Controller
public class JumunController {

	@Autowired
	private MemberService memberService;

	/*
	 * jumun - address
	 */
	@RequestMapping("/jumun_address_form")
	public String jumun_address_form() {
		return "jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.GET)
	public String jumun_address_action_GET() {
		return "redirect:jumun_address_form"; 
	}
	@RequestMapping(value = "/jumun_address_action", method = RequestMethod.POST)
	public String jumun_address_action_POST(Model model,HttpSession session,@ModelAttribute Member member) {
		String forwardPath = "";
		session.setAttribute("loginMember", new Member("uni1", "2222", "t", "t","t", "t", "t", "t", "t", "t" ,"t"));
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberService.updateMember(loginMember);
		forwardPath="jumun_delivery_form";
		return forwardPath;
	}
	/*
	 * jumun - delivery
	 */
	@RequestMapping("jumun_delivery_form")
	public String jumun_delivery_form() {
		return "jumun_delivery_form"; 
	}
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.GET)
	public String jumun_delivery_action_GET() {
		return "jumun_delivery_form"; 
	}
	@RequestMapping(value = "/jumun_delivery_action", method = RequestMethod.POST)
	public String jumun_delivery_action_POST(Model model,HttpSession session, @ModelAttribute Member member) {
		String forwardPath = " ";
		session.setAttribute("loginMember", new Member("uni1", "2222", "t", "t","t", "t", "t", "t", "t", "t" ,"t"));
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberService.updateMember(loginMember);
		forwardPath="jumun_payment_form";
		return forwardPath;
	}
	/*
	 * jumun - payment
	 */
	@RequestMapping("/payment_form")
	public String payment_form() {
		return "jumun_payment_form"; 
	}
	@RequestMapping(value = "/jumun_payment_action", method = RequestMethod.GET)
	public String jumun_payment_action_GET() {
		return "redirect:jumun_payment_form"; 
	}
	@RequestMapping(value = "/jumun_payment_action", method = RequestMethod.POST)
	public String jumun_payment_action_POST(HttpServletRequest request,@RequestParam String member_id, @RequestParam String member_password) {
		String forwardPath="jumun_delivery_form";
		return forwardPath;
	}
	/*
	 * jumun - review
	 */
	@RequestMapping("/review_form")
	public String review_form() {
		return "jumun_review_form"; 
	}
	/*
	 * jumun - complete
	 */
	@RequestMapping("/complete_form")
	public String complete_form() {
		return "jumun_complete_form"; 
	}
	//모든 Exception을 던지면 이곳으로 날라온다
	@ExceptionHandler(Exception.class)
	public String member_error_handle(Exception e) {
		return "404.html"; //예시입니다. 후에 .html은 뺄거예요
	}

	/*@RequestMapping("/guest_list.do")
	public String guest_list(Model model) throws Exception {
		String forwardPath = "";
		List<Guest> guestList = guestService.selectAll();
		model.addAttribute("guestList", guestList);
		forwardPath = "guest_list";
		return forwardPath;
	}
	*/
	
	
}