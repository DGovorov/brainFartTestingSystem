package com.brainfart.loader;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.brainfart.model.Answer;
import com.brainfart.model.Question;
import com.brainfart.model.Test;

/**
 * Created by Dim on 10.05.2016.
 */
public class TestLoader {

	private Connection connection;

	public TestLoader() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		System.setProperty("jdbc.drivers", "org.postgresql.Driver");

		try {
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/BrainFartDB", "postgres",
					"Postgres");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private List<Answer> getAnswers(Connection connection, int questionId) throws SQLException {
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement
				.executeQuery("SELECT id, content, correctness FROM answer_option WHERE questions_id = " + questionId);
		List<Answer> answers = new ArrayList<>();
		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			// question id already known, since passed to the method as
			// parameter and used in SELECT
			String content = resultSet.getString("content");
			boolean correct = resultSet.getBoolean("correctness");
			answers.add(new Answer(id, questionId, content, correct));
		}
		return answers;
	}

	private Test testTemplate(int testId) {
		String testSql = "SELECT name, subject_id, description FROM test WHERE id = ?";
		try (PreparedStatement testStatement = connection.prepareStatement(testSql);) {
			testStatement.setInt(1, testId);
			ResultSet testResultSet = testStatement.executeQuery();
			testResultSet.next();
			String name = testResultSet.getString("name");
			int subject = testResultSet.getInt("subject_id");
			String description = testResultSet.getString("description");
			return new Test(testId, name, String.valueOf(subject), description);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Test getTest(int testId) {

		Test test = testTemplate(testId);

		String questionsSql = " SELECT q.id, q.value, q.content, q.img FROM question AS q JOIN question_connection AS qc ON qc.question_id = q.id AND qc.test_id = ? ";
		try (PreparedStatement questionsStatement = connection.prepareStatement(questionsSql);) {
			questionsStatement.setInt(1, testId);
			ResultSet rs = questionsStatement.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				int value = rs.getInt("value");
				String content = rs.getString("content");
				String img = rs.getString("img");
				List<Answer> answers = getAnswers(connection, id);
				Question question = new Question(id, value, content, answers);
				question.setType(question.getType());
				test.addQuestion(question);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

		return test;
	}

	public List<Test> getAllTests() {
		List<Test> testList = new ArrayList<>();
		String testSql = "SELECT id, name, subject_id, description, img FROM test";
		try (PreparedStatement testStatement = connection.prepareStatement(testSql);) {
			ResultSet testResultSet = testStatement.executeQuery();
			while (testResultSet.next()) {
				int id = testResultSet.getInt("id");
				String name = testResultSet.getString("name");
				String subject = testResultSet.getString("subject_id");
				String description = testResultSet.getString("description");
				String img = testResultSet.getString("img");
				Test test = new Test(id, name, subject, description, img);
				test.setSubject();
				testList.add(test);
			}
			return testList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}