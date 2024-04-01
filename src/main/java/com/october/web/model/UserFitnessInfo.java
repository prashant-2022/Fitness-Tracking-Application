 package com.october.web.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class UserFitnessInfo {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int fitnessInfo_id;
	private int age;
	private String gender;
	private int height;
	private int weight;
	private int neck;
	private int waist;
	private String activity;
	private String goal;
	 @OneToOne
	 @JoinColumn(name = "user_id")
	private User user;
	public int getFitnessInfo_id() {
		return fitnessInfo_id;
	}
	public void setFitnessInfo_id(int fitnessInfo_id) {
		this.fitnessInfo_id = fitnessInfo_id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getNeck() {
		return neck;
	}
	public void setNeck(int neck) {
		this.neck = neck;
	}
	public int getWaist() {
		return waist;
	}
	public void setWaist(int waist) {
		this.waist = waist;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserFitnessInfo(int fitnessInfo_id, int age, String gender, int height, int weight, int neck, int waist,
			String activity, String goal, User user) {
		super();
		this.fitnessInfo_id = fitnessInfo_id;
		this.age = age;
		this.gender = gender;
		this.height = height;
		this.weight = weight;
		this.neck = neck;
		this.waist = waist;
		this.activity = activity;
		this.goal = goal;
		this.user = user;
	}
	public UserFitnessInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserFitnessInfo [fitnessInfo_id=" + fitnessInfo_id + ", age=" + age + ", gender=" + gender + ", height="
				+ height + ", weight=" + weight + ", neck=" + neck + ", waist=" + waist + ", activity=" + activity
				+ ", goal=" + goal + ", user=" + user + "]";
	}
	
	 
}
