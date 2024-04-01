package com.october.web.controller;




import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.october.web.model.DailyTrack;

import com.october.web.model.User;
import com.october.web.model.UserFitnessInfo;
import com.october.web.repository.DailyTrackInfo;
import com.october.web.repository.UserFitnessData;
import com.october.web.repository.UserInfo;


@Controller
public class EntryController {
	
	 @Autowired
	    private UserInfo userInfo;

	    @Autowired
	    private UserFitnessData userFitnessData;
	
	    @Autowired
	    private DailyTrackInfo dailyTrackInfo;
	    
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	 @GetMapping("/UserRegister")
	    public String showStep1Form(Model model) {
		 
	        model.addAttribute("user", new User());
	        return "UserRegister.jsp"; 
	    }
	
	 @PostMapping("/UserRegister")
	
	    public String processStep1Form(@ModelAttribute("user") User user, HttpSession session) {
	        session.setAttribute("user", user);
	        return "redirect:UserFitInfo.jsp"; 
	    }
	 
	 @GetMapping("/UserFitInfo")
	    public String showStep2Form(Model model) {
	        model.addAttribute("userFitnessInfo", new UserFitnessInfo());
	        return "UserFitInfo.jsp"; 
	    }
	 
	 @PostMapping("/UserFitInfo")
	    public String processStep2Form(@ModelAttribute("userFitnessInfo") UserFitnessInfo userFitnessInfo, HttpSession session) {
	        User user = (User) session.getAttribute("user");
	        if (user != null) {
	            user = userInfo.save(user);
	            userFitnessInfo.setUser(user);
	            userFitnessData.save(userFitnessInfo);
	           
	            session.setAttribute("user", user); 
	            session.setAttribute("userFitnessInfo", userFitnessInfo);
	          
	          
	            return "redirect:UserLogin.jsp"; 
	        } else {
	            
	            return "redirect:UserRegister.jsp"; 
	        }
	    }
	 

	 
	 @GetMapping("/UserHome")
	 public String userHome(Model m, HttpSession session) {
	     Integer loggedInUserId = (Integer) session.getAttribute("loggedInUser");
	     if (loggedInUserId != null) {
	         User loggedInUser = userInfo.findById(loggedInUserId).orElse(null);
	         if (loggedInUser != null) {
	             UserFitnessInfo userFitnessInfo = userFitnessData.findById(loggedInUser.getUser_id());
	             if (userFitnessInfo != null) {
	            	 String name = loggedInUser.getFirst_name();
	          
	            	 session.setAttribute("name", name);


	                 Map<String, Object> userData = new HashMap<>();
	                 double bmi = calculateBMI(userFitnessInfo.getHeight(), userFitnessInfo.getWeight());
	                 double Body_fat = calculateBodyFat(userFitnessInfo.getHeight(), userFitnessInfo.getGender(), userFitnessInfo.getNeck(), userFitnessInfo.getWaist());
	                 int M_calorie = calculateCalorie(userFitnessInfo.getHeight(), userFitnessInfo.getWeight(), userFitnessInfo.getAge(), userFitnessInfo.getGender(), userFitnessInfo.getActivity());
	                 userData.put("userFitnessInfo", userFitnessInfo);
	                 userData.put("bmi", bmi);
	                 userData.put("Body_fat", Body_fat);
	                 userData.put("M_calorie", M_calorie);
	                 session.setAttribute("userData", userData);
	                 return "redirect:/UserHome.jsp";
	             } else {
	                 return "redirect:/UserFitInfo.jsp";
	             }
	         } else {
	         
	             return "redirect:/UserLogin.jsp";
	         }
	     } else {
	       
	         return "redirect:/UserLogin.jsp";
	     }
	 }
	 

	 @PostMapping("/UserLogin")
	 public String login(@RequestParam String email, @RequestParam String password, HttpSession session) {
	     User user = userInfo.findByEmail(email);
	     if (user != null && user.getPassword().equals(password)) {
	         session.setAttribute("loggedInUser", user.getUser_id());
	         return "redirect:/UserHome";
	     } else {
	         return "Login.jsp";
	     }
	 }
//------------------------------------------------------------------------------	 
	 private double calculateBMI(int height, int weight) {
		   
		 	double bmi = weight / Math.pow(((double) height / 100), 2);
		 	String b = String.format("%.2f", bmi);
		 	double bmiValue = Double.parseDouble(b);
		 	
		    return bmiValue; 

		}
	 
	 private double calculateBodyFat(int height,String gender, int neck,int waist) {
		 double bodyFatPercentage;
		 if (gender.equals("Male")) {
			    bodyFatPercentage = 495 / (1.0324 - 0.19077 * Math.log10(waist - neck) + 0.15456 * Math.log10(height)) - 450;
		   }else {
			   bodyFatPercentage = 495 / (1.29579 - 0.35004 * Math.log10(waist + waist - neck) + 0.221 * Math.log10(height)) - 450;
		   }
		 String b = String.format("%.2f", bodyFatPercentage);
		 double bodyFatPercentageValue = Double.parseDouble(b);
		 return bodyFatPercentageValue;

		}
	 
	 private int calculateCalorie(int height, int weight,int age,String gender,String activity) {
		 double BMR;
		 
		 
		 if(gender.equals("Male")) {
		
			 BMR=(9.99*weight)+(6.25*height)-(5.68*age) ;
		 }else {
			 BMR=447.593+(9.247*weight)+(3.098*height)-(4.330*age);
		 }
		 
		 if(activity.equalsIgnoreCase("Inactive")) {
			 BMR*=1.2;
		 }else if(activity.equalsIgnoreCase("Low")) {
			 BMR*=1.375;
		 }else if(activity.equalsIgnoreCase("Moderate")) {
			 BMR*=1.55;
		 
		 }else if(activity.equalsIgnoreCase("High")){
			 BMR*=1.725;
		 }
		 int result = (int)Math.round(BMR);
		 return result;
	 }
	 
	
	 //------------------------------------------------------------------------------------------- 
	 @GetMapping("/{fitnessInfo_id}")
	 public String update(@PathVariable int fitnessInfo_id, Model model) {
	     UserFitnessInfo userFitnessInfo = userFitnessData.findById(fitnessInfo_id);
	     model.addAttribute("userFitnessInfo", userFitnessInfo);
	     return "edit.jsp";
	 }

	 @PostMapping("/edit/{fitnessInfo_id}")
	 public String edit(@PathVariable int fitnessInfo_id, @ModelAttribute UserFitnessInfo userFitnessInfo, RedirectAttributes redirectAttributes, HttpSession session) {
	     UserFitnessInfo existingInfo = userFitnessData.findById(fitnessInfo_id);
	     if (existingInfo != null) {
	         // Update the existing user fitness info
	         existingInfo.setAge(userFitnessInfo.getAge());
	         existingInfo.setGender(userFitnessInfo.getGender());
	         existingInfo.setHeight(userFitnessInfo.getHeight());
	         existingInfo.setWeight(userFitnessInfo.getWeight());
	         existingInfo.setNeck(userFitnessInfo.getNeck());
	         existingInfo.setWaist(userFitnessInfo.getWaist());
	         existingInfo.setActivity(userFitnessInfo.getActivity());
	         existingInfo.setGoal(userFitnessInfo.getGoal());


	         userFitnessData.save(existingInfo);
	        
	         session.setAttribute("userFitnessInfo", existingInfo);
	      
	         redirectAttributes.addFlashAttribute("userFitnessInfo", existingInfo);
	      
	         
	     }
	     return "redirect:/UserHome";
	     
	 }
	
	 
	 //-------------------------------------------------------------
	
	 @PostMapping("/Tracker")
	 public String processTrackerForm(@RequestParam("dailyIntake") int dailyIntake,
	                                  @RequestParam("burnedCalories") int burnedCalories,
	                                  Model model, HttpSession session) {
	     Integer userId = (Integer) session.getAttribute("loggedInUser");
	     if (userId != null) {
	         // Retrieve user and user fitness info based on user ID
	         Optional<User> userOptional = userInfo.findById(userId);
	         Optional<UserFitnessInfo> userFitnessInfoOptional = userFitnessData.findById(userId);

	         if (userOptional.isPresent() && userFitnessInfoOptional.isPresent()) {
	             User user = userOptional.get();
	             UserFitnessInfo userFitnessInfo = userFitnessInfoOptional.get();

	             int intakeCalories = dailyIntake - burnedCalories;

	           
	             int weight = userFitnessInfo.getWeight();

	      
	             DailyTrack dailyTrack = dailyTrackInfo.findByUserAndDate(user, LocalDate.now());
	             if (dailyTrack == null) {
	                 dailyTrack = new DailyTrack();
	                 dailyTrack.setUser(user);
	                 dailyTrack.setDate(LocalDate.now());
	                 
	                 dailyTrack.setFitnessInfo(userFitnessInfo);
	             }

	           
	             dailyTrack.setWeight(weight);
	             dailyTrack.setCalorie_Intake(intakeCalories);

	           
	             dailyTrackInfo.save(dailyTrack);

	           
	             model.addAttribute("goalCalories", calculateGoalCalories(userFitnessInfo));
	             model.addAttribute("intakeCalories", intakeCalories);

	             
	             return "redirect:/Tracker1";
	         } else {
	            
	             return "redirect:/UserLogin.jsp";
	         }
	     } else {
	        
	         return "redirect:/UserLogin.jsp";
	     }
	 }

	 @GetMapping("/Tracker1")
	 public String showTrackerPage(Model model, HttpSession session) {
	     Integer loggedInUserId = (Integer) session.getAttribute("loggedInUser");
	     if (loggedInUserId != null) {
	         
	         Optional<User> userOptional = userInfo.findById(loggedInUserId);
	         Optional<UserFitnessInfo> userFitnessInfoOptional = userFitnessData.findById(loggedInUserId);

	         if (userOptional.isPresent() && userFitnessInfoOptional.isPresent()) {
	             User loggedInUser = userOptional.get();
	             UserFitnessInfo userFitnessInfo = userFitnessInfoOptional.get();

	             int goalCalories = calculateGoalCalories(userFitnessInfo);

	           
	             DailyTrack dailyTrack = dailyTrackInfo.findByUserAndDate(loggedInUser, LocalDate.now());
	             if (dailyTrack != null) {
	                
	                 int intakeCalories = dailyTrack.getCalorie_Intake();
	                 model.addAttribute("intakeCalories", intakeCalories);
	             }

	             model.addAttribute("goalCalories", goalCalories);
	             return "Tracker.jsp";
	         } else {
	             
	             return "redirect:/UserLogin.jsp";
	         }
	     } else {
	         
	         return "redirect:/UserLogin.jsp";
	     }
	 }



	    private int calculateGoalCalories(UserFitnessInfo userFitnessInfo) {
	        int goalCalories = calculateCalorie(userFitnessInfo.getHeight(), userFitnessInfo.getWeight(), userFitnessInfo.getAge(), userFitnessInfo.getGender(), userFitnessInfo.getActivity());
	       
	        if (userFitnessInfo.getGoal().equalsIgnoreCase("Weight_gain")) {
	         
	            goalCalories += 500;
	        } else if (userFitnessInfo.getGoal().equalsIgnoreCase("Weight_loss")) {
	            
	            goalCalories -= 500;
	        }
	        return goalCalories;
	    }

//----------------------logout---------------------------------------
	    @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        
	        session.invalidate();
	        
	        return "redirect:/";
	    }


	 //------------------------------------------------------------------------------------------------------
	    @GetMapping("/Plans")
	    public String displayWorkoutPlans(Model model, HttpSession session) {
	       
	    	Integer loggedInUserId = (Integer) session.getAttribute("loggedInUser");
	    	 User loggedInUser = userInfo.findById(loggedInUserId).orElse(null);
	        if (loggedInUserId == null) {
	           
	            return "redirect:/UserLogin.jsp"; 
	        }
	        	 UserFitnessInfo userFitnessInfo = userFitnessData.findById(loggedInUser.getUser_id());
	        

	     
	        model.addAttribute("userFitnessInfo", userFitnessInfo);
	        
	        return "Plans.jsp";
	    }

//---------------------------------------------------------------------------------------------------------
	   

	    @GetMapping("/chart")
	    public String chart(Model model, HttpSession session) {
	        Integer loggedInUserId = (Integer) session.getAttribute("loggedInUser");
	        if (loggedInUserId != null) {
	            List<DailyTrack> allChartData = dailyTrackInfo.findAll(); 
	            List<DailyTrack> chartData = filterChartData(allChartData, loggedInUserId); 
	            model.addAttribute("chartData", chartData);
	            return "Progress.jsp"; 
	        } else {
	          
	            return "redirect:/UserLogin.jsp"; 
	        }
	    }

	    private List<DailyTrack> filterChartData(List<DailyTrack> allChartData, int userId) {
	        List<DailyTrack> filteredData = new ArrayList<>();
	        for (DailyTrack track : allChartData) {
	            if (track.getUser().getUser_id() == userId) { 
	                filteredData.add(track);
	            }
	        }
	        return filteredData;
	    }


	 
	 
	 
	 
	 
	 

}
