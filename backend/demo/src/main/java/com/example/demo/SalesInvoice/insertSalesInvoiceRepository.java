package com.example.demo.SalesInvoice;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import jakarta.transaction.Transactional;

@Repository
public interface insertSalesInvoiceRepository extends JpaRepository<salesinvoiceEntity, Integer> {

	@Modifying
    @Transactional
    @Query(value = "INSERT INTO insert_salesinvoice (dt_insertion_date, vc_customer_name, vc_address) VALUES (?1, ?2, ?3)", nativeQuery = true)
    int salesinvoice_insert(Date parsedDate, String custName, String address);
}

