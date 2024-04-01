package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.october.web.model.User;

@Repository
public interface UserInfo extends JpaRepository<User, Integer> {

	User findByEmail(String email);
   
}