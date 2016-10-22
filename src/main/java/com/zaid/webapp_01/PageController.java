package com.zaid.webapp_01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class PageController {

	@Autowired
	ProductDAO pDAO;
	@RequestMapping("/")
	public ModelAndView landingPage() {
		ModelAndView mv = new ModelAndView("landinpage");
		return mv;

	}

	@RequestMapping("/login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("login");
		return mv;

	}

	@RequestMapping("/cart")
	public ModelAndView cartPage() {
		ModelAndView mv = new ModelAndView("cart");
		return mv;

	}
	

	@RequestMapping("/home")
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView("home");
		return mv;

	}

	@RequestMapping("/register")
	public ModelAndView registerPage() {
		ModelAndView mv = new ModelAndView("payment");
		return mv;

	}

	/*
	 * @RequestMapping("/admin") public ModelAndView adminPage(){ ModelAndView
	 * mv = new ModelAndView("admin"); return mv;
	 * 
	 * }
	 */

	@RequestMapping("/viewall")
	public ModelAndView viewallPage() {
		ModelAndView mv = new ModelAndView("viewall");
		return mv;
	}

	@RequestMapping("/viewall/all")
	@ResponseBody

	List<ProductModel> viewAllProduct() {
		return pDAO.getAll();
	}

	@RequestMapping("/viewone")
	public ModelAndView viewOnePage() {
		ModelAndView mv = new ModelAndView("viewone");
		return mv;
	}

	@RequestMapping("/aboutus")
	public ModelAndView AboutUsPage() {
		ModelAndView mv = new ModelAndView("aboutus");
		return mv;
	}

	@RequestMapping("/contactus")
	public ModelAndView coontactUsPage() {
		ModelAndView mv = new ModelAndView("contactus");
		return mv;
	}

}
