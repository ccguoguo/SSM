package com.owen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.owen.entity.Category;
import com.owen.service.CategoryService;

@Controller
//当进入这个控制器的时候接下来的操作都会带有这个路径/admin/category
@RequestMapping("admin/category/")	//窄化路径
public class CategoryController {
	
	@Autowired
	private CategoryService cateService;
	
	//使用Model使M和V层解耦
	//写了@RequestParam之后形参就可以不与页面参数同名
	//参数绑定是pojo类型时,包装类中的属性名要和页面的name一样
	@RequestMapping("selectCategoryController.action")
	public String selectCategoryByPage(
			@RequestParam(value="currentPage",required=false,defaultValue="1") Integer cp,
			@RequestParam(value="pageSize",required=false,defaultValue="5") Integer ps,
			Model model) {
		
		PageInfo<Category> p = cateService.selectCategoryByPage(cp, ps);
		
		model.addAttribute("pageInfo", p);//相当于request.setAttribute();

		return "redirect:showCategory.jsp";
	}
	
	@RequestMapping("insertCategoryController.action")
	public String insertCategory(Category category) {
		cateService.insertCategory(category);
		return "redirect:showCategory.jsp";
	}

}
