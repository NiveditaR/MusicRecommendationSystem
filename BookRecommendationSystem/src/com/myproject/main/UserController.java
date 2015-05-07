/*package com.myproject.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {

	
		@RequestMapping(value="/{userId}", method = RequestMethod.GET)
		public String getSong(@PathVariable long userId, ModelMap model) {

			model.addAttribute("books", " for user " + userId + " : " + BookRecommender.getInstance().userbasedrecommendation(userId));
			return "user";

		}
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String getDefaultSong(ModelMap model) {
	 
			model.addAttribute("books", "Enter User Id");
			return "user";
	 
		}
}*/
