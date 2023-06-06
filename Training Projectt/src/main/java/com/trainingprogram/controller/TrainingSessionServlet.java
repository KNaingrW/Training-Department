package com.trainingprogram.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.trainingprogram.dao.SelectedCourseDao;
import com.trainingprogram.dao.SelectedCourseDaoService;
import com.trainingprogram.model.Course;
import com.trainingprogram.model.CourseRegister;

@WebServlet("/")
public class TrainingSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SelectedCourseDao courseDAO;
	private TrainingSessionController  sessionController;

    public TrainingSessionServlet() {
        super();
        courseDAO = new SelectedCourseDaoService();
        sessionController=new TrainingSessionController(courseDAO);
        System.out.println("here");
        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getServletPath();
    	System.out.print(action);
		try {
			switch (action) {
			case "/new":
				sessionController.showNewForm(request, response);
				break;
			case "/insert":
				sessionController.insertCourse(request, response);
				break;
			
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Course Auto-generated method stub
		doGet(request,response);
			}


	

}
