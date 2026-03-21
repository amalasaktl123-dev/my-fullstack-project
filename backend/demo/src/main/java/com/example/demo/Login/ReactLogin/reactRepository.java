package com.example.demo.Login.ReactLogin;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.Login.loginEntity;

public interface reactRepository extends JpaRepository<reactEntity, Long> {

	
	
	
	@Query(value="select  password from tbl_users where username ilike ?1",nativeQuery = true)
    String  getlogin_details(String userName);
}
