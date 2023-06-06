package com.trainingprogram.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trainingprogram.model.Course;
import com.trainingprogram.model.CourseRegister;
import com.trainingprogram.utils.EmailSendUtils;
import com.trainingprogram.utils.JDBCUtils;
import com.trainingprogram.utils.ReadSheetUtils;

public class SelectedCourseDaoService implements SelectedCourseDao  {
	private static final String INSERT_CourseS_SQL = "INSERT INTO courses"
			+ "  (firstName, lastName, email, courseName, price, time) VALUES " + " (?, ?, ?, ?, ?, ?);";

	private static final String SELECT_Course_BY_ID = "select * from courses where id =?";

	
	@Override
	public void insertCourse(CourseRegister Course) throws SQLException {
		System.out.println(INSERT_CourseS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = JDBCUtils.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CourseS_SQL)) {
			preparedStatement.setString(1, Course.getFirstName());
			preparedStatement.setString(2, Course.getLastName());
			preparedStatement.setString(3, Course.getEmail());
			preparedStatement.setString(4, Course.getCourseName());
			preparedStatement.setDouble(5, Course.getPrice());
			preparedStatement.setString(6, Course.getTime());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			new EmailSendUtils().SendEmail(Course); 
		} catch (SQLException exception) {
			System.out.print(exception);
		}
	}

	@Override
	public CourseRegister selectCourse(int CourseId) {
		CourseRegister Course = null;

		try (Connection connection = JDBCUtils.getConnection();
		
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Course_BY_ID);) {
			preparedStatement.setLong(1, CourseId);
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			
			while (rs.next()) {
				int id = rs.getInt("id");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String email = rs.getString("email");
				String courseName = rs.getString("courseName");
				double price = rs.getLong("price");
				String time = rs.getString("time");
				Course = new CourseRegister(id, firstName, lastName, email, courseName, price, time);
			}
		} catch (SQLException exception) {
			System.out.println(exception);
		}
		return Course;
	}

	@Override
	public List<Course> getAllCourses() {
		
		return ReadSheetUtils.ReadCourse("C:\\Users\\lenovo\\Downloads\\Module 5\\Training course.xlsx"); 
	}
	
	@Override
	public double getCoursePrice(String courseName) 
	{
		 List<Course> listerCourse= getAllCourses();
		 
		 for( Course currentCourse:listerCourse) {
			 if(currentCourse.getCourseName().equalsIgnoreCase(courseName)) 
				 return currentCourse.getPrice();
		 }
		return 0;
	}


	
}
