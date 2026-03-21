package com.example.demo.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

 
@Controller
public class Logincontroller{
	@Autowired Loginservice Loginservice;
	
	
	@PostMapping("/login")
	public String login(@RequestParam("username") String username,@RequestParam("password") String password)
	{
	
		String results = Loginservice.Login(username,password);
		if(results.equals("loginSuccessfull"))
		{
			return "Mainpage/InsertSalesInvoice";
		}
		else
		{
			return "/Loginfailure";
		}
		
	}
	
}