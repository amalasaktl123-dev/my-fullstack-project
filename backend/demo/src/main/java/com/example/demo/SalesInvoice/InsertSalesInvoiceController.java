package com.example.demo.SalesInvoice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InsertSalesInvoiceController {
	
@Autowired
InsertSalesInvoiceService InsertSalesInvoiceService;
	


@RequestMapping("/saveInvoice")
public String insertSalesinvoice(@RequestParam("custName") String custName,@RequestParam("date") String date,@RequestParam("address") String address,@RequestParam("itemname") String itemname,@RequestParam("itemrate") int itemrate)
{
	System.out.println("--------------custName---------"+custName);
	System.out.println("--------------date---------"+date);
	System.out.println("--------------address---------"+address);
	System.out.println("--------------itemname---------"+itemname);
	System.out.println("--------------itemrate---------"+itemrate);
	boolean flag=false;
	flag=InsertSalesInvoiceService.insertSalesInvoice(custName,date,address,itemname,itemrate);


	
	return "/Mainpage/InsertSalesInvoice";
	
}
}