 package com.october.web.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
@Entity
public class DailyTrack {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Track_id;
	private int weight;
	@ManyToOne
	 @JoinColumn(name = "fitnessInfo_id") 
	 private UserFitnessInfo fitnessInfo;
	 
	private int Calorie_Intake;
	private LocalDate date;
	 @ManyToOne
	 @JoinColumn(name = "user_id")
	private User user;
	 @PrePersist
	protected void onCreate() {
	  
	   setDate(LocalDate.now());
	  }
	public int getTrack_id() {
		return Track_id;
	}
	public void setTrack_id(int track_id) {
		Track_id = track_id;
	}
	
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public UserFitnessInfo getFitnessInfo() {
		return fitnessInfo;
	}
	public void setFitnessInfo(UserFitnessInfo fitnessInfo) {
		this.fitnessInfo = fitnessInfo;
	}
	public int getCalorie_Intake() {
		return Calorie_Intake;
	}
	public void setCalorie_Intake(int calorie_Intake) {
		Calorie_Intake = calorie_Intake;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public DailyTrack(int track_id, int weight, UserFitnessInfo fitnessInfo, int calorie_Intake, LocalDate date,
			User user) {
		super();
		Track_id = track_id;
		this.weight = weight;
		this.fitnessInfo = fitnessInfo;
		Calorie_Intake = calorie_Intake;
		this.date = date;
		this.user = user;
	}
	public DailyTrack() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	 
}
