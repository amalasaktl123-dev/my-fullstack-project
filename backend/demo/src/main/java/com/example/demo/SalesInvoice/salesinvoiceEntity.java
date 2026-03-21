package com.example.demo.SalesInvoice;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "insert_salesinvoice")
public class salesinvoiceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pki_sales_invoice_id;

    // Add other columns (optional)
    private String vc_customer_name;
    private String vc_address;

    // Getters and Setters
    public int getPki_sales_invoice_id() {
        return pki_sales_invoice_id;
    }

    public void setPki_sales_invoice_id(int pki_sales_invoice_id) {
        this.pki_sales_invoice_id = pki_sales_invoice_id;
    }

    public String getVc_customer_name() {
        return vc_customer_name;
    }

    public void setVc_customer_name(String vc_customer_name) {
        this.vc_customer_name = vc_customer_name;
    }

    public String getVc_address() {
        return vc_address;
    }

    public void setVc_address(String vc_address) {
        this.vc_address = vc_address;
    }
}
