package com.example.demo.Login.ReactLogin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:3000") // allows React frontend
public class ReactController {

	@Autowired
	reactService reactService;
	String flag = null;
	

	 @PostMapping("/login")
	    public Map<String, String> login(@RequestBody Map<String, String> credentials,HttpServletRequest request) {
		 
	    	
	    	String remoteAddr = request.getRemoteAddr();
	    	
	    	System.out.println("======remoteadddress==="+remoteAddr);
	        String username = credentials.get("username");
	        String password = credentials.get("password");

	        Map<String, String> response = new HashMap<>();

	        flag = reactService.loginController(username, password);
	        
	        if (password.equals(flag)) 
	        {
	            response.put("status", "success");
	            response.put("message", "Login successful");
	        } 
	        else 
	        {
	            response.put("status", "error");
	            response.put("message", "Invalid username or password");
	        }

	        return response;
	    }
	
	
}
