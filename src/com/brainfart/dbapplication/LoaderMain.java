package com.brainfart.dbapplication;

import java.util.List;

public class LoaderMain {

	public static void main(String[] args){
		TestLoader tloader = new TestLoader();
		Test test = tloader.getTest();
		List<Question> qlist = test.getQuestions();
		Question question = qlist.get(9);
		String content = question.getContent();
		
		System.out.println(content);
	}
	
}
