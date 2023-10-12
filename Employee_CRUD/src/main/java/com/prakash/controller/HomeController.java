package com.prakash.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prakash.dao.EmpDao;
import com.prakash.dao.UserDao;
import com.prakash.entity.Employee;
import com.prakash.entity.User;



@Controller
public class HomeController {
	
	@Autowired
	private EmpDao empDao;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/home")
	public String home(Model model) {
		List<Employee> list = empDao.getAllEmp();
		model.addAttribute("empList",list);
		return "home";
	}
	@RequestMapping("/addEmployee")
	public String addEmp() {
		return "add_emp";
	}
	
	@RequestMapping(path="/createEmp",method=RequestMethod.POST)
	public String createEmp(@ModelAttribute Employee emp,HttpSession session) {
		int i = empDao.saveEmp(emp);
		session.setAttribute("msg", "Register Successfully");
		return "redirect:/addEmployee";
	}
	
	@RequestMapping(path="/editEmp/{id}")
	public String editEmp(@PathVariable("id") int id,Model model) {
		Employee emp = empDao.getEmpById(id);
		model.addAttribute("emp",emp);
		return "edit";
	}
	
	@RequestMapping(path="/updateEmp",method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute Employee emp,HttpSession session) {
		empDao.updateEmp(emp);
		session.setAttribute("msg","Update Successfully");
		return "redirect:/home";
		
	}
	
	@RequestMapping("/deleteEmp/{id}")
	public String deleteEmp(@PathVariable("id") int id,HttpSession session) {
		empDao.deleteEmp(id);
		session.setAttribute("msg", "Employee Delete Successfully.");
		return "redirect:/home";
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("/register")
	public String registerPage() {
		return "register";
	}
	
	@RequestMapping(path="/createUser",method=RequestMethod.POST)
	public String register(@ModelAttribute User user,HttpSession session) {
		System.out.println(user);
		userDao.saveUser(user);
		session.setAttribute("msg", "Register Successfully.");
		return"redirect:/register";
	}
	
	@RequestMapping(path="/userlogin",method=RequestMethod.POST)
	public String login(@RequestParam("email") String em,@RequestParam("password") String pw,HttpSession session){
		User user=userDao.loginUser(em, pw);
		if(user != null) {
			session.setAttribute("loginuser", user);
			return "redirect:/home";
		}else {
			session.setAttribute("msg", "Invalid email or Password");
		   return "redirect:/login";
	}
	
	}
	@RequestMapping("/myProfile")
	public String myProfile() {
		return "profile";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginuser");
		session.setAttribute("msg", "Logout Successfully.");
		return "login";
	}
	
	@RequestMapping("/landing")
	public String landingPage() {
		return "landing";
	}

}
