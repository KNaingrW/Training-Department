package com.trainingprogram.model;

public class CourseRegister {
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String courseName;
	private double price;
	private String time;
	 

	
	
	 
	public CourseRegister(String firstName, String lastName, String email, String courseName, double price, String time )
	{
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.courseName = courseName;
		this.price = price;
		this.time = time;
		 
	}

 
 
		public CourseRegister(int id,String firstName, String lastName, String email, String courseName, double price, String time)
		{
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.courseName = courseName;
		this.price = price;
		this.time = time;
	 
	}



		public int getId() {
			return id;
		}



		public void setId(int id) {
			this.id = id;
		}



		public String getFirstName() {
			return firstName;
		}



		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}



		public String getLastName() {
			return lastName;
		}



		public void setLastName(String lastName) {
			this.lastName = lastName;
		}



		public String getEmail() {
			return email;
		}



		public void setEmail(String email) {
			this.email = email;
		}



		public String getCourseName() {
			return courseName;
		}



		public void setCourseName(String courseName) {
			this.courseName = courseName;
		}



		public double getPrice() {
			return price;
		}



		public void setPrice(double price) {
			this.price = price;
		}



		public String getTime() {
			return time;
		}



		public void setTime(String time) {
			this.time = time;
		}

	

}
