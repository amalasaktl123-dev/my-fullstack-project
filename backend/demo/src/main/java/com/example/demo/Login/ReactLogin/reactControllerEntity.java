package com.example.demo.Login.ReactLogin;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class reactControllerEntity {

	@Id
	@GeneratedValue
    int pki_user_id;
	String username;
	String password;
}
