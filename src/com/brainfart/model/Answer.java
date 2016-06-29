package com.brainfart.model;

/**
 * Created by Dim on 10.05.2016.
 */

public class Answer {

    int id;
    int questionId;
    String content;
    boolean correct;

    public Answer(int id, int questionId, String content, boolean correct) {
        this.id = id;
        this.questionId = questionId;
        this.content = content;
        this.correct = correct;
    }

    public int getId() {
        return id;
    }

    public int getQuestionId() {
        return questionId;
    }

    public String getContent() {
        return content;
    }

    public boolean isCorrect() {
        return correct;
    }
}