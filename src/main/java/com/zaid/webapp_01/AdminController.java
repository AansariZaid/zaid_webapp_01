package com.zaid.webapp_01;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@Autowired
	ProductDAO pDAO;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView getAllProducts() {
		ModelAndView modelAndView = new ModelAndView("admin");
		modelAndView.addObject("product", new ProductModel());
		modelAndView.addObject("products", pDAO.getAll());
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
	public String adminSave(@Valid @ModelAttribute("product") ProductModel product, HttpServletRequest request, BindingResult result, Model model) {
		
		if(result.hasErrors()){
			model.addAttribute("product", product);
			model.addAttribute("productData", pDAO.getAll());
			return "/admin";
		}
		else if (product.getId() == 0) {
			pDAO.insertProduct(product);
			
			MultipartFile file = product.getFile();
			String originalFile = file.getOriginalFilename();
			
			String filepath = request.getSession().getServletContext().getRealPath("resources/images/productimages");
			System.out.println("File path is " + filepath);
			String filename = filepath + "\\" + product.getId() + ".jpg";
			System.out.println("File path is " + filepath);
			
			try{
				byte image[] = product.getFile().getBytes();
				BufferedOutputStream bof = new BufferedOutputStream(new FileOutputStream(filename));
				bof.write(image);
				bof.close();
			}catch(IOException e){
				e.printStackTrace();
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
		} else {
			pDAO.updateProduct(product);
		}

		return "redirect:/admin";
	}
}
