package com.jsp.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.ProductDao;
import com.jsp.Entities.FoodOrder;
import com.jsp.Entities.Item;
import com.jsp.Entities.Product;

@Controller
public class ItemController {
    
	@Autowired
	ProductDao pdao;
	
	
	@RequestMapping("/additem")
	public ModelAndView addItem(HttpSession sess,@RequestParam("id")int id) {
		if(sess.getAttribute("itemslist")==null) {
			sess.setAttribute("itemslist", new ArrayList<Item>());
		}
		
		ModelAndView mav=new ModelAndView("itemform");
		Product p=pdao.viewProductById(id);
		Item i=new Item();
		i.setName(p.getName());
		i.setCost(p.getCost());
		i.setType(p.getType());
		mav.addObject("itemobj",i);
		return mav;
		
		
	}
	@RequestMapping("/additemtofoodorder")
	public ModelAndView additems(@ModelAttribute("itemobj")Item i,HttpSession sess)
	{
		i.setCost(i.getCost()*i.getQuantity());
		FoodOrder ord=(FoodOrder)sess.getAttribute("usefoodorder");
		i.setFoodorder(ord);
		List<Item> items=(List<Item>)sess.getAttribute("itemslist");
		items.add(i);
		ModelAndView mav=new ModelAndView("redirect://viewallproduct");
        return mav;
        
		
	}
}
