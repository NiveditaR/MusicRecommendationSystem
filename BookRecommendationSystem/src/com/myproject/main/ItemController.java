/*package com.myproject.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/item")
public class ItemController {
	
	@RequestMapping(value = "/{bookId}", method = RequestMethod.GET)
	public String getSong(@PathVariable String bookId, ModelMap model) {

		model.addAttribute("books", " for books " + bookId + " : " + BookRecommender.getInstance().itembasedrecommendation(Long.valueOf(bookId)));
		return "item";
	}
	
	@RequestMapping(value = "/item", method = RequestMethod.GET)
	public ModelAndView song(ModelMap model) {
		DataInput input = new DataInput();
		model.addAttribute("input",input);
		return new ModelAndView("Home", "command", input);
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getDefaultSong(ModelMap model) {

		model.addAttribute("books", "Enter book Id");
		return "item";

	}

}
*/