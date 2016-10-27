package com.zaid.webapp_01;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/cart")

public class CartController {


 @Autowired
 private UserDAO user;

 @RequestMapping("/")
 public String getCart(Principal principal, Model model){
    User customer = user.getCustomerByUsername(principal.getName());
	 model.addAttribute("customer", customer);
	 model.addAttribute("cartId", customer.getCart().getCartId());
     return "cart";
 }
}

//    @RequestMapping("/{cartId}")
//    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
//        /*model.addAttribute("cartId", cartId);*/
//
//        return "cart";
//    }

