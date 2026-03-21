package com.example.demo.Login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/B2B")  // or use "/login" if you want that path
    public String login() {
       System.out.println("====Entered In the main controller");
        return "/Login"; // Name of your JSP file: Login.jsp
    }
    
    
    @GetMapping("/loginfailure")  // or use "/login" if you want that path
    public String returntologin() {
       System.out.println("====Entered In the retrun main controller");
        return "/Login"; // Name of your JSP file: Login.jsp
    }
    
    
    
}

