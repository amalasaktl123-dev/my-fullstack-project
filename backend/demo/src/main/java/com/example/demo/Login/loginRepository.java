package com.example.demo.Login;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.Login.loginEntity;

public interface loginRepository extends JpaRepository<loginEntity, Long> {

	

	@Query(value="select * from tbl_users where username ilike ?1",nativeQuery = true)
    List<Object[]> getsupplier_details(String userName);

	
	
	
}
