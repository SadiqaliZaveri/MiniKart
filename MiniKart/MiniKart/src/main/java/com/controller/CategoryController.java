package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;
import com.service.CategoryService;



@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	
	@RequestMapping("/categories")
	public String categories(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoriesjson",this.categoryService.listCategory());
		model.addAttribute("listCategory",this.categoryService.listCategoryViaJson());
		return "admin";
	}
	
	@RequestMapping(value="/add/categories", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category)
	
	{
		this.categoryService.addCategory(category);
		return "redirect:/admin";
	}
	
	
	@RequestMapping(value= "/editCategory-{categoryId}" , method = RequestMethod.GET)
	public String editCategory(@PathVariable("categoryId") int categoryId, Model model)
	{
		model.addAttribute("category",categoryService.getById(categoryId));
		return "EditCategory";
	}
	
	@RequestMapping(value="/delete-{categoryId}", method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("categoryId") int categoryId )
	{
		
		categoryService.deleteCategory(categoryId);
		return "redirect:/admin";
		
	}

//     @RequestMapping("/edit/{bookId}")
//    public String editBook(
//        @PathVariable("bookId")Integer bookId,
//        Map<String, Object> map)
//    {
//        map.put("book", bookService.getBookById(bookId));
//        map.put("bookList", bookService.listBooks());
//        return "book";
//    }
//	 
//
//    @RequestMapping("/delete/{bookId}")
//    public String deleteBook(@PathVariable("bookId") Integer bookId)
//    {
//        bookService.removeBook(bookId);
//        return "redirect:/index";
//    }

//	@RequestMapping(value = "/edit", method = RequestMethod.GET)
//    public ModelAndView editUser(HttpServletRequest request) 
//	{
//        int userId = Integer.parseInt(request.getParameter("id"));
//        User user = userDao.get(userId);
//        ModelAndView model = new ModelAndView("UserForm");
//        model.addObject("user", user);
//        return model;      
//    }
//     
//    @RequestMapping(value = "/delete", method = RequestMethod.GET)
//    public ModelAndView deleteUser(HttpServletRequest request) {
//        int userId = Integer.parseInt(request.getParameter("id"));
//        userDao.delete(userId);
//        return new ModelAndView("redirect:/");     
//    }
}
