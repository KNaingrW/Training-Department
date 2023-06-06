package com.trainingprogram.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.trainingprogram.dao.SelectedCourseDao;
import com.trainingprogram.model.Course;
import com.trainingprogram.model.CourseRegister;
import com.trainingprogram.model.CourseTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TrainingSessionController {
	
	private SelectedCourseDao courseDAO;
	
	TrainingSessionController(SelectedCourseDao _courseDAO){
		courseDAO=_courseDAO;
	}
	

	public void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Course> listCourse = courseDAO.getAllCourses();
		request.setAttribute("listCourse", listCourse);  
		RequestDispatcher dispatcher = request.getRequestDispatcher("course-register.jsp");
		dispatcher.forward(request, response);
	}


	public void insertCourse(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String courseName = request.getParameter("courseName");
		String time = request.getParameter("time");
		if (time != null) {
		    CourseTime a = new CourseTime();
		    a.setTime(time);
		}
		
		double price = courseDAO.getCoursePrice(courseName); // get price from excel sheet 
	    CourseRegister newCourse = new CourseRegister(firstName, lastName, email, courseName, price, time);; 
		courseDAO.insertCourse(newCourse);
		RequestDispatcher dispatcher = request.getRequestDispatcher("thankyou.jsp");
		request.setAttribute("Course", newCourse);
		dispatcher.forward(request, response);
	}



}
