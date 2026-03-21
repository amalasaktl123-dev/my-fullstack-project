package com.example.demo.Login.ReactLogin;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class reactEntity {
	@Id
	@GeneratedValue
	private Long pki_user_id;
    private String username;
    private String password;
}
