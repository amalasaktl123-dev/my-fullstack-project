package com.example.demo.SalesInvoice;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

@Service
public class InsertSalesInvoiceService {

@Autowired
insertSalesInvoiceRepository insertSalesInvoiceRepository;

	public boolean insertSalesInvoice(String custName, String date, String address, String itemname, int itemrate) {
		
		int flag = 0;
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	    // 2. Parse the string to java.util.Date
	    java.util.Date parsedDate = null;
		try {
			parsedDate = dateFormat.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    System.out.println(parsedDate);  // Example output: Sun 
	
		
		
		flag = insertSalesInvoiceRepository.salesinvoice_insert(parsedDate, custName, address);
		
		return true;
		
	}

}