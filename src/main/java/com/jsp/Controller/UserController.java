package com.jsp.Controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.UserDao;
import com.jsp.Entities.User;

@Controller
public class UserController {
	
    @Autowired
	UserDao dao;
    
    
    @RequestMapping("/createuserAccount")
    public ModelAndView createUser() {
    	ModelAndView mav=new ModelAndView("createuser");
    	User u=new User();
    	mav.addObject("users",u);
    	
    	return mav;
    }
    
    @RequestMapping("/createusers")
    public ModelAndView addUser(@ModelAttribute("users") User u) {
    	ModelAndView mav=new ModelAndView("usermenu");
    	dao.saveUser(u);
    	return mav;
    }
    
    @RequestMapping("/validateuser")
    public ModelAndView loginValidation(ServletRequest req,HttpSession sess)
    {
    String email=req.getParameter("email");
    String password=req.getParameter("password");
    User u=dao.login(email,password);
    
    if(u==null) {
    	ModelAndView mav=new ModelAndView("loginuser");
    	mav.addObject("a","Invalid Crediatials");
    	return mav;
    }
    else {
    	ModelAndView mav=new ModelAndView("useroption");
    	mav.addObject("b","loginsuccessfully");
    	sess.setAttribute("user",u);
    	return mav;
    }

  
    	
    }
}
