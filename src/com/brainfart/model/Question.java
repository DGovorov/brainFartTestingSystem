package com.brainfart.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dim on 10.05.2016.
 */
public class Question {

	private int id;
	private int value;
	private String content;
	private List<Answer> answers;
	private String type;

	public Question(int id, int value, String content) {
		this.id = id;
		this.value = value;
		this.content = content;
		answers = new ArrayList<>();
	}

	public Question(int id, int value, String content, List<Answer> answers) {
		this(id, value, content);
		this.answers = answers;
		System.out.println("Question created with answers: " + content);
	}

	public void addAnswer(Answer answer) {
		answers.add(answer);
	}
	
	public void setType(String type){
		this.type = type;
	}

	public String getType() {
		int trueAnswCounter = 0;
		for (Answer answer : answers) {
			if (answer.isCorrect()) {
				trueAnswCounter++;
			}
		}

		// if one correct answer - radio block
		// if more than one, or none correct - checkbox
		String type;
		
		if (trueAnswCounter > 1){
			return "checkbox";
		}
		
		if (trueAnswCounter == 1) {
			return "radio";
		}
		
		return "";
	}

	public int getId() {
		return id;
	}

	public int getValue() {
		return value;
	}

	public String getContent() {
		return content;
	}

	public List<Answer> getAnswers() {
		return answers;
	}
}