package com.brainfart.dbapplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Created by Dim on 10.05.2016.
 */
public class TestLoader {

    public TestLoader() {
        //TODO: think about storing DB connection as field
        //probably get connection as constructor parameter
    }

    private List<Answer> getAnswers(Connection connection, int questionId) throws SQLException{
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM \"AnswerOptions\" WHERE questions_id = " + questionId);
        List<Answer> answers = new ArrayList<>();
        while (resultSet.next()) {
            int id = resultSet.getInt(1);
            //question id already known, since passed to the method as parameter and used in SELECT
            String content = resultSet.getString(3);
            boolean correct = resultSet.getBoolean(4);
            answers.add(new Answer(id, questionId, content, correct));
        }
        return answers;
    }

    //TODO: receive testId as parameter
    public Test getTest() {
    	try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        String url = "jdbc:postgresql://localhost:5432/postgres";
        Properties props = new Properties();
        props.setProperty("user","postgres");
        props.setProperty("password","Postgres");
        //TODO: ssl is not configured on DB server yet!
        //props.setProperty("ssl","false");

        Test test = new Test(1, "First Test", "Front-End", "Here is our first homework test");
        try (
                Connection conn = DriverManager.getConnection(url, props);
                Statement st = conn.createStatement();
        ){
            ResultSet rs = st.executeQuery("SELECT * FROM \"Questions\"");
            while (rs.next()){

                int id = rs.getInt(1);
                int value = rs.getInt(3);
                String content = rs.getString(2);
                List<Answer> answers = getAnswers(conn, id);
                Question question = new Question(id, value, content, answers);
                test.addQuestion(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return test;
    }

}