package com.niit.test.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.test.model.Product;
import com.niit.test.service.ProductService;

@Controller
public class controller {
	
	@Autowired
	ProductService productservice;
	
	@RequestMapping(value ={"/","/home"})
	public String home()
	{
		return "index";
	}
	@RequestMapping(value = {"/login","/admin/login","/user/login"},method = RequestMethod.GET)
	public String getlogin(ModelMap map,HttpServletRequest req) {
		return "login";
	}
	@RequestMapping(value ={"/view2all"})
	public String home1()
	{
		return "view2all";
	}
	
	@RequestMapping(value="/viewproducts")
	public String vieall(Map<String, Object> map)
	{
		Product productmodelResult=new Product();
		map.put("productModel",productmodelResult);
	    map.put("productmodelList", productservice.getAllProductModel());
	    	return "Category";
	}
}
