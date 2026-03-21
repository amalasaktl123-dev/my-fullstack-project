package com.example.demo.Login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Loginservice {
	
	@Autowired
	private loginRepository loginRepository;
	
	public String Login(String username, String password)
	{
		
		String username_database = null;
		String password_database = null;
		String        returnflag = null;
		username='%'+username;
		List<Object[]> supplier_names = loginRepository.getsupplier_details(username);
		for (Object[] result : supplier_names) {

			Map<String, String> dataMap = new HashMap<>();
			if (String.valueOf(result[1]) != "null" && !String.valueOf(result[1]).trim().isEmpty()) {
				username_database=(String.valueOf(result[1])).trim();
				password_database=(String.valueOf(result[2])).trim();

			}
			username = username.replace("%", "");

		if (username.trim().equals(username_database) && password.equals(password_database))
		{
			returnflag = "loginSuccessfull";
		}
		else
		{
			returnflag = "fail";
		}
		
	}
		return returnflag;
}
}