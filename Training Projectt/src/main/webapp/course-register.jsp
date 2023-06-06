<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.trainingprogram.model.Course"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Course</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
      }

      form {
        background-color: white;
        border-radius: 5px;
        padding: 20px;
        margin: 20px auto;
        width: 50%;
        height: 630px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
      }

      input[type="text"],
      input[type="email"],
      select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      input[type="submit"]{
  
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: middle;
      }
   input[type="reset"]{
        background-color: #ff3333;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: middle;
      }

      input[type="submit"]:hover{
         opacity: 0.5;  
      }
        input[type="reset"]:hover{
        opacity: 0.5;    
        }
            nav {
        background-color: #333;
        overflow: hidden;
      }

      nav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
      }

      nav a:hover {
        background-color: #ddd;
        color: black;
      }   
      .fa {
padding: 20px;
font-size: 20px;
width: 60px;
text-align: center;
text-decoration: none;
margin: 5px 2px;
border-radius: 100%;
}
.fa:hover {
  opacity: 0.7;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}
.form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
                           
</style>
</head>
<body>
<nav>
      <a href="index.jsp">Home</a>
      <a href="<%= request.getContextPath() %>/new">Register Course</a>
    </nav>
 <form action="insert" method="post">
      <h2>Registration Form</h2>
      <label for="firstName">First Name</label>
      <input type="text" id="firstName" name="firstName" placeholder="Enter First Name" required>

      <label for="lastName">Last Name</label>
      <input type="text" id="lastName" name="lastName" placeholder="Enter Last Name" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="Enter Email" required>

      <label for="courseName">Selected Course</label>
      <select id="courseName" name="courseName" >
       	<%
								 //getattribute 
								if (request.getAttribute("listCourse") != null) {
									List<Course> listCourse = (List<Course>) request.getAttribute("listCourse");
									for (Course i : listCourse) {
								%>

								<option value="<%=i.getCourseName()%>"><%=i.getCourseName()%></option>
								<%
								}
								}
								%>
      </select>

      <label for="time">Time</label>
       <select id="time" name="time">
       	<option value="">Select your suitable time</option>
		<option value="9:00 am to 11:00 am">9:00am to 11:00am</option>
		<option value="3:00 pm to 5:00 pm">3:00pm to 5:00pm</option>
		<option value="6:00pm to 9:00pm">6:00pm to 9:00pm</option>
      </select>
      <input type="submit" value="Register Course">
      <input type="reset" value="Reset">
    </form>
    <br><br>
      <footer class="bg-dark text-light py-4">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h5>Contact Us</h5>
            <p>Phone Number: (873) 302-6850</p>
          </div>
          <div class="col-md-4">
            <h5>Follow Us</h5>
            <ul class="list-inline">
              <a href="https://www.facebook.com/" class="fa fa-facebook" target="_blank"></a>
              <a href="http://www.twitter.com/" class="fa fa-twitter" target="_blank"></a>
              <a href="https://www.google.com/" class="fa fa-google" target="_blank"></a>
              <a href="http://www.linkedin.com/" class="fa fa-linkedin" target="_blank"></a>
            </ul>
          </div>
          <div class="col-md-4">
           <p>3129 Prospect Street Decatur, GA 30030, USA</p>
          </div>
        </div> 
        <hr>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>&copy; 2023 Training Department. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
</body>
</html>