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

import com.jsp.Dao.FoodOrderDao;
import com.jsp.Dao.UserDao;
import com.jsp.Entities.FoodOrder;
import com.jsp.Entities.Item;
import com.jsp.Entities.User;

@Controller
public class FoodOrderController {
    @Autowired
	UserDao udao;
	
    @Autowired
	FoodOrderDao fdao;
    double totalbill=0;
    
    @RequestMapping("/createorder")
    public ModelAndView createorder() {
    	ModelAndView mav=new ModelAndView("createfoodorder");
    	FoodOrder f=new FoodOrder();
    	mav.addObject("foodorder",f);
    	return mav;
    	
    }
    @RequestMapping("/savefoodorder")
    public ModelAndView saveFood(@ModelAttribute("foodorder") FoodOrder order ,HttpSession sess) {
    	
    	sess.setAttribute("usefoodorder", order);
    	ModelAndView mav=new ModelAndView("redirect://viewallproduct");
		return mav;
    	
    }
    
     @RequestMapping("/submitfoodorder")
     public ModelAndView submitFood(HttpSession sess) {
    	 FoodOrder fo=(FoodOrder)sess.getAttribute("usefoodorder");
    	 List<Item> items=(List<Item>)sess.getAttribute("itemslist");
    	 fo.setItems(items);
    	 items.stream().forEach(i->{
    		 totalbill=totalbill+i.getCost();
    	 });
    	 
    	 fo.setTotalcost(totalbill);
    	 User u=(User)sess.getAttribute("user");
    	 List<FoodOrder> order1=u.getFoodorders();
    	 if(order1.size()>0) {
    		 order1.add(fo);
    		 fo.setUser(u);
    		 u.setFoodorders(order1);   
    	 }
    	 else {
    		 List<FoodOrder>orders=new ArrayList<FoodOrder>();
    		 orders.add(fo);
    		 fo.setUser(u);
    		 u.setFoodorders(orders);
    	 } 
    	 
    	 fdao.saveFoodOrder(fo);
    	 udao.updateUser(u);
    	 
    	 
    	 
    	 sess.removeAttribute("usefoodorder");
    	 sess.removeAttribute("itemslist");
    	 
    	 ModelAndView mav=new ModelAndView("useroption");
    	 																																																																																		
    	 return mav;
    	 
     }
     
     @RequestMapping("/viewallfoodorder")
     public ModelAndView viewAllFoodOrder() {
    	 List<FoodOrder>foods=fdao.viewAllFoodOrders();
    	 ModelAndView mav=new ModelAndView("allfoodorder");
    	 mav.addObject("foodlist",foods);
    	 return mav;
     }
     
    
     
   
}
