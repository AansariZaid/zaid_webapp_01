package com.zaid.webapp_01;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@Autowired
	ProductDAO pDAO;

	@RequestMapping(value = "/admin")
	public ModelAndView getAllProducts() {
		ModelAndView modelAndView = new ModelAndView("admin");
		modelAndView.addObject("product", new ProductModel());
		modelAndView.addObject("productData", pDAO.getAll());
		return modelAndView;

	}

	@RequestMapping(value = "/admin/edit/{id}", method = RequestMethod.GET)
	public ModelAndView adminEdit(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("admin");
		// ProductModel product = pDAO.get(id);
		mv.addObject("product", pDAO.getProductById(id));
		mv.addObject("products", pDAO.getAll());
		return mv;
	}

	@RequestMapping(value = "/admin/delete/{id}", method = RequestMethod.GET)
	public String adminDelete(@ModelAttribute("id") int id) {

		pDAO.deleteProductById(id);
		return "redirect:/admin";
	}

	@RequestMapping(value = "/admin/save", method = RequestMethod.POST)
	public String adminSave(@Valid @ModelAttribute("product") ProductModel product) {

		if (product.getId() == 0) {
			pDAO.insertProduct(product);
		} else {
			pDAO.updateProduct(product);
		}

		return "redirect:/admin";
	}

}
