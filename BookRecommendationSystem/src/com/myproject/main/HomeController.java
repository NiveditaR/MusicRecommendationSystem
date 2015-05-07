package com.myproject.main;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;

import com.sun.istack.internal.NotNull;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		return "index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView verifyLogin(){
		return new ModelAndView("login");
	}
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public ModelAndView viewindex(){
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/dataset", method=RequestMethod.GET)
	public ModelAndView viewdataset(){
		return new ModelAndView("dataset");
	}
	
	@RequestMapping(value="/details", method=RequestMethod.GET)
	public ModelAndView viewdetails(){
		return new ModelAndView("details");
	}
	
	@RequestMapping(value="/results", method=RequestMethod.GET)
	public ModelAndView viewresults(){
		return new ModelAndView("results");
	}
	@RequestMapping(value="/algo", method=RequestMethod.GET)
	public ModelAndView viewAlgo(){
		return new ModelAndView("algo");
	}
	
	@RequestMapping(value="/genres", method=RequestMethod.GET)
     public ModelAndView viewallgenres(Model model){
		
		return new ModelAndView("genres","message", BookRecommender.getInstance().getGenres());
		
	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView searchbyitem(@RequestParam long songId, Model model){
					
		return new ModelAndView("item","message", BookRecommender.getInstance().itembasedrecommendation(songId));
		
	}
	
	@RequestMapping(value="/user", method=RequestMethod.POST)
	public ModelAndView searchbyuser(@RequestParam long userId, Model model){
		
				
		return new ModelAndView("user","message", BookRecommender.getInstance().userbasedrecommendation(userId));
		
	}
	

	
	
/*	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String getSong(@RequestParam long userId, @RequestParam long password, ModelMap model) {
		if(userId==password){
			System.out.println("in verify");
			
		model.addAttribute("books", " for user " + userId + " : " + BookRecommender.getInstance().userbasedrecommendation(userId));
		return "user";
		}
		else{
			model.addAttribute("loginerror", "Error logging in");
			return "login";
		}
}
	*/
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getDefaultSong(ModelMap model) {
 
		model.addAttribute("books", "Enter User Id");
		return "user";
 
	}*/
	
	/*@RequestMapping(value="/item", method=RequestMethod.POST)
	public String getSong(@RequestParam long bookId, ModelMap model) {
		
			System.out.println("in item");
			List<RecommendedItem> books=BookRecommender.getInstance().itembasedrecommendation(bookId);
			model.addAttribute("books", books);
			return "home";
		
		

	}*/
	
	
}
