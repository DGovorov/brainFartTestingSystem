package com.brainfart.controller;


import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brainfart.loader.TestLoader;
import com.brainfart.model.Question;
import com.brainfart.model.Test;

@Controller
public class TestController {
	
	@RequestMapping("/details")
	public String details(Model model){
		TestLoader loader = new TestLoader();
		Test test = loader.getTest(1);
		List<Question> qList = test.getQuestions();
		model.addAttribute("questions", qList);
		return "/WEB-INF/jsp/staticpage.jsp";
	}

	
	@RequestMapping("/tests/{id}")
	public String detail(Model model, @PathVariable int id){
		
		TestLoader loader = new TestLoader();
		Test test = loader.getTest(id);
		List<Question> qList = test.getQuestions();
		model.addAttribute("test", test);
		
		consoleOutput(test, id);
		return "/WEB-INF/jsp/test.jsp";
	}
	
	//TODO: delete this method
	private void consoleOutput(Test test, int id){
		System.out.println("TEST ID = " + id);
		System.out.println(test.getDescription() + "  " + test.getId() + test.getName());
	}

	
	
	
}
