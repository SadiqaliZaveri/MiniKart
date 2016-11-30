package com.minikart.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.h2.engine.Session;
import org.omg.CORBA.Request;
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
	
	
	
//	@RequestMapping(value="/deleteCartItem")
//	public String deleteCartItem(HttpSession session)
//	{
//		   int productId = (Integer)session.getAttribute("buyNowProductId"+session.getAttribute("cartItemId"));
//		   productService.updateProductPlus(productId);
//		   cartItemService.deleteCartItem((Integer)session.getAttribute("cartItemId"));
//		  
//		return "redirect:/home";
//	}
	
	@RequestMapping(value="/deleteCartItem={cartItemId}",method=RequestMethod.GET)
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,HttpSession session)
	{
		   int productId = (Integer)session.getAttribute("buyNowProductId"+cartItemId);
		   productService.updateProductPlus(productId);
		   cartItemService.deleteCartItem(cartItemId);
		  
		return "redirect:/cartList";
	}
	
	@RequestMapping(value="/buyNow-{productId}")
	public String addToBuyNow(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, Model model, HttpSession session )
	{
		if(productService.getIdFromId(productId).getProductStock()<=0)
		{
			return "redirect:/home";
		}
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		cartItem.setFlag(false);
		cartItem.setProductId(productId);
		
		cartItem.setProductName(productService.getIdFromId(productId).getProductName());
		cartItem.setProductPrice(productService.getIdFromId(productId).getProductPrice());
		cartItem.setProductDiscountPrice(productService.getIdFromId(productId).getProductDiscountPrice());
		cartItem.setAmount(productService.getIdFromId(productId).getProductPrice());
		cartItem.setProductQuantity(1);
		Date sysdate = new Date();
		cartItem.setOrderDate(sysdate);
		cartItemService.addCartItem(cartItem);
		session.setAttribute("buyNowProductId"+cartItem.getCartItemId(), cartItem.getProductId());
		productService.updateProductMinus(productId);
		session.setAttribute("cartItemId", cartItem.getCartItemId());
		
		return "redirect:/buyNowList-"+cartItem.getCartItemId();
		
		
		
	}
	
	@RequestMapping(value="/buyNowList-{cartItemId}")
	public String cartListBuyNow(Model model,@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("cartItemId") int cartItemId, HttpSession session)
	{
		session.setAttribute("checkoutfrom", "buyNow");
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
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/updateCartFlag")
	public String updateCartFlag(HttpSession session)
	{
		List<CartItem> k =  (List<CartItem>) session.getAttribute("cartItemList");
		if(k == null || session.getAttribute("checkoutfrom")=="buyNow")
		{
			 cartItemService.UpdateCartItemFlag((Integer)session.getAttribute("cartItemId"));
		}
		else
		{
			for(CartItem i : k)
			{	
				cartItemService.UpdateCartItemFlag(i.getCartItemId());
			}
		
		}
		 return "redirect:/home";
	}
	
	
	
	// CART 
	
	
	@RequestMapping(value="/cartList")
	public String cartListBuyNow(Model model,@ModelAttribute("cartItem") CartItem cartItem, HttpSession session)
	{
		session.setAttribute("checkoutfrom", "cartList");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		List<CartItem> p = cartItemService.listCartItemViaUserId(userId);
		session.setAttribute("cartItemList", p);
		for(CartItem i : p)
		{	
			session.setAttribute("buyNowProductId"+i.getCartItemId(),i.getProductId());
		}
		
		
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String j = gson.toJson(p);
		model.addAttribute("cartItemList",j);
		return "CartList";
	}
	
	@RequestMapping(value="/orderedList")
	public String orderedList(Model model,@ModelAttribute("cartItem") CartItem cartItem, HttpSession session)
	{
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		List<CartItem> p = cartItemService.listOrderedItemViaUserId(userId);

		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String j = gson.toJson(p);
		model.addAttribute("OrderedItemList",j);
		return "OrderedList";
	}
	
	
	@RequestMapping(value="/AddToCart-{productId}")
	public String addToCart(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, Model model, HttpSession session )
	{
		if(productService.getIdFromId(productId).getProductStock()<=0)
		{
			return "redirect:/home";
		}
		
		if(cartItem.getProductQuantity()>3)
		{
			session.setAttribute("quantityLimit", "Maximum Amount of Quantity can be 3 only per product.");
			return "viewfullprod-"+productId;
		}
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);
		cartItem.setFlag(false);
		cartItem.setProductId(productId);
		
		cartItem.setProductName(productService.getIdFromId(productId).getProductName());
		cartItem.setProductPrice(productService.getIdFromId(productId).getProductPrice());
		cartItem.setProductDiscountPrice(productService.getIdFromId(productId).getProductDiscountPrice());
		cartItem.setAmount(productService.getIdFromId(productId).getProductPrice());
		if(cartItem.getProductQuantity()== 0)
		{
		cartItem.setProductQuantity(1);
		}
		
		Date sysdate = new Date();
		cartItem.setOrderDate(sysdate);
		cartItemService.addCartItem(cartItem);
		session.setAttribute("buyNowProductId"+cartItem.getCartItemId(), cartItem.getProductId());
		productService.updateProductMinus(productId);
		session.setAttribute("cartItemId", cartItem.getCartItemId());
		
		return "redirect:/cartList";
		
		
		
	}
	
	
	
}
