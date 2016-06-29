package com.brainfart.loader;

import java.util.List;

import com.brainfart.model.Question;
import com.brainfart.model.Test;

public class LoaderMain {

	public static void main(String[] args){
		TestLoader tloader = new TestLoader();
		Test test = tloader.getTest(3);
		List<Question> qlist = test.getQuestions();
		Question question = qlist.get(9);
		String content = question.getContent();
		
		System.out.println(content);
	}
	
}
