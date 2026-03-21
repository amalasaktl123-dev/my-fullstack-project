package com.example.demo.Login;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class loginEntity {
	@Id
	@GeneratedValue
	private Long pki_user_id;
    private String username;
    private String password;
}
