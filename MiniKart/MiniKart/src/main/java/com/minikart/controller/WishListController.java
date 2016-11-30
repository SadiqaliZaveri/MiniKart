package com.minikart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;import org.springframework.beans.factory.annotation.Autowired;
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
import com.minikart.model.WishList;
import com.minikart.service.ProductService;
import com.minikart.service.UserService;
import com.minikart.service.WishListService;

@Controller
public class WishListController 
{
	@Autowired
	private UserService userService;
	  
	@Autowired
	private ProductService productService;
	  
	@Autowired
	private WishListService  wishListService;
		
	@RequestMapping("/wishlist-{productId}")
	  public String addTowishList(@ModelAttribute ("wishList") WishList wishList,@PathVariable("productId") int productId,Model model,HttpSession session)
	  {
		 
		  Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		  String user=authentication.getName();
		  int userId= userService.getUserDetailsFromName(user).getUserId();
		  
		  wishList.setUserId(userId);
		  wishList.setCartId(userId);
		  wishList.setFlag(false);
		  wishList.setProductId(productId);
		
		  wishList.setProductName(productService.getIdFromId(productId).getProductName());
		  wishList.setProductPrice(productService.getIdFromId(productId).getProductPrice());		 
		  wishList.setProductDiscountPrice(productService.getIdFromId(productId).getProductDiscountPrice());
		  wishList.setProductQuantity(1);
		  
		  wishListService.addWishList(wishList);
		  
		  session.setAttribute("wishListId", wishList.getWishItemId());
		  
	      return "redirect:/wishlist";
		  
	  }
	
	@RequestMapping("/wishlist")
	  public String wishList(HttpSession session,Model model)
	  {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId= userService.getUserDetailsFromName(user).getUserId();
		
		List<WishList> p = wishListService.wishList(userId);
		
		
	    Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
	    String j=gson.toJson(p);
	    model.addAttribute("wishList",j);
	    return "WishList";
	  }
	
  @RequestMapping(value="/deleteWishList-{wishListId}", method=RequestMethod.GET)
	public String deleteWishList(@PathVariable("wishListId") int wishListId)
	{
	  
	  wishListService.deleteWishList(wishListId);
	  return "redirect:/";
		
	}
}
