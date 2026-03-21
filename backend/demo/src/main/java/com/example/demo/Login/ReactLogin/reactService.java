package com.example.demo.Login.ReactLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class reactService {
	
	@Autowired
	reactRepository reactRepository;
	
	public String loginController(String userName,String passWord)
	{
		String flag = reactRepository.getlogin_details(userName);
		return flag;
		
	}
	
	
	
	
	
}
