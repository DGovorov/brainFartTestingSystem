package main.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brainfart.loader.TestLoader;
import com.brainfart.model.Test;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String index(Model model) {
		getTests(model);
		return "/WEB-INF/jsp/index.jsp";
	}
	
	private void getTests(Model model){
		TestLoader loader = new TestLoader();
		List<Test> tests = loader.getAllTests();
		model.addAttribute("tests", tests);
	}

}
