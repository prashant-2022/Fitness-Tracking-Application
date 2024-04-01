package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.october.web.model.User;
import com.october.web.model.UserFitnessInfo;

@Repository
public interface UserFitnessData extends JpaRepository<UserFitnessInfo, Integer> {
   
	public UserFitnessInfo findById(int id);

}
