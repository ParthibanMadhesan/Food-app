package com.jsp.Controller;

import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.ProductDao;
import com.jsp.Entities.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao prd;

	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		ModelAndView mav =new ModelAndView("createproduct");
		Product pro=new Product();
		mav.addObject("product",pro);
		return mav;
	}
	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("product") Product p) {
		
		prd.saveProduct(p);
		ModelAndView mav=new ModelAndView("adminoptions");
		return mav;
	}
	@RequestMapping("/viewallproducts")
	public ModelAndView fetchAllProducts() {
		List<Product> prods=prd.viewAllProducts();
		ModelAndView mav=new ModelAndView("allproducts");
		mav.addObject("productlist",prods);
		return mav;
		
	}
	
	@RequestMapping("editproduct")
	public ModelAndView editProduct(@RequestParam("id") int id) {
		Product pr=prd.viewProductById(id);
		ModelAndView mav=new ModelAndView("updateproduct");
		mav.addObject("productdata",pr);
		return mav;
	}
	
	@RequestMapping("updatepro")
	public ModelAndView updateProduct(ServletRequest req) {
	  String id=req.getParameter("id");
	  String name=req.getParameter("name");
	  String type=req.getParameter("type");
	  String cost=req.getParameter("cost");
	  
	  Product p=new Product();
	  p.setId(Integer.parseInt(id));
	  p.setName(name);
	  p.setType(type);
      p.setCost(Double.parseDouble(cost));	  
      
      prd.updateProductt(p);
      
      ModelAndView mav=new ModelAndView("redirect://viewallproduct");
      return mav;
      
	}
	
	@RequestMapping("viewallproduct")//we can use foodorder 
	public ModelAndView fetchAllProduct() {
		List<Product> prods=prd.viewAllProducts();
		ModelAndView mav=new ModelAndView("viewproducts");
		mav.addObject("productslist",prods);
		return mav;
		
	}
	@RequestMapping("deleteproduct")
	public ModelAndView deleteProduct(@RequestParam ("id") int id) {
		prd.viewProductDeleteByid(id);
		ModelAndView mav=new ModelAndView("redirect://viewallproducts"); 
		return mav;
	}
}
