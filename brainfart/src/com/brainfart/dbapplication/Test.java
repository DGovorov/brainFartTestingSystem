package com.brainfart.dbapplication;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dim on 10.05.2016.
 */
public class Test {

    private int id;
    private String name;
    private String subject;
    private String description;
    private List<Question> questions;

    public Test(int id, String name, String subject, String description) {
        this.id = id;
        this.name = name;
        this.subject = subject;
        this.description = description;
        questions = new ArrayList<>();
        System.out.println("Test created without questions");
    }

    public Test(int id, String name, String subject, String description, List<Question> questions) {
        this(id, name, subject, description);
        this.questions = questions;
        System.out.println("Test created with questions");
    }

    public void addQuestion(Question question) {
        questions.add(question);
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSubject() {
        return subject;
    }

    public String getDescription() {
        return description;
    }

    public List<Question> getQuestions() {
        return questions;
    }
}