package com.minikart.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.model.CartItem;
import com.minikart.service.CartItemService;
import com.minikart.service.ProductService;
import com.minikart.service.UserService;

@Controller
public class CartItemController {

	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping(value="/deleteCartItem")
	public String deleteCartItem(HttpSession session)
	{
		   int productId = (Integer)session.getAttribute("buyNowProductId");
		   productService.updateProductPlus(productId);
		   cartItemService.deleteCartItem((Integer)session.getAttribute("cartItemId"));
		  
		return "redirect:/home";
	}
	
	@RequestMapping(value="/deleteCartItem={cartItemId}",method=RequestMethod.GET)
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,HttpSession session)
	{
		   int productId = (Integer)session.getAttribute("buyNowProductId");
		   productService.updateProductPlus(productId);
		   cartItemService.deleteCartItem(cartItemId);
		  
		return "redirect:/home";
	}
	
	@RequestMapping(value="/buyNow-{productId}")
	public String addToBuyNow(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, Model model, HttpSession session )
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		cartItem.setFlag(false);
		cartItem.setProductId(productId);
		session.setAttribute("buyNowProductId", productId);
		cartItem.setProductName(productService.getIdFromId(productId).getProductName());
		cartItem.setProductPrice(productService.getIdFromId(productId).getProductPrice());
		cartItem.setProductDiscountPrice(productService.getIdFromId(productId).getProductDiscountPrice());
		cartItem.setAmount(productService.getIdFromId(productId).getProductPrice());
		cartItem.setProductQuantity(1);
		Date sysdate = new Date();
		cartItem.setOrderDate(sysdate);
		cartItemService.addCartItem(cartItem);
		productService.updateProductMinus(productId);
		session.setAttribute("cartItemId", cartItem.getCartItemId());
		
		return "redirect:/buyNowList-"+cartItem.getCartItemId();
		
		
		
	}
	
	@RequestMapping(value="/buyNowList-{cartItemId}")
	public String cartListBuyNow(Model model,@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("cartItemId") int cartItemId)
	{
		
		CartItem p = cartItemService.listCartItem(cartItemId);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String j = gson.toJson(p);
		model.addAttribute("cartItemBuyNow",j);
		return "BuyNow";
	}
	
	@RequestMapping("/checkout")
	public String CheckOut(HttpSession session)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		session.setAttribute("userDetails_userId", userId);
		
		return "redirect:/cart";
	}
	
	@RequestMapping("/updateCartFlag")
	public String updateCartFlag(HttpSession session)
	{
		 cartItemService.UpdateCartItemFlag((Integer)session.getAttribute("cartItemId"));
		 return "redirect:/home";
	}
	
	
	
	
}
