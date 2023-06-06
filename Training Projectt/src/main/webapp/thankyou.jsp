<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.trainingprogram.model.CourseRegister"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Training Program Registration</title>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
    }

    .header {
        background-color:  #66a3ff;
        color: white;
        padding: 20px;
    }

    h1 {
        margin: 0;
        font-size: 36px;
        text-align: center;
    }

    .content-section {
        background-color: #fff;
        padding: 20px;
        margin-top: 20px;
    }

    .content-text {
        margin-bottom: 20px;
        text-align: center;
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    th {
        background-color:  #66a3ff;
        color: white;
        font-weight: bold;
        text-align: left;
        padding: 8px;
    }

    td {
        border-bottom: 1px solid #ddd;
        padding: 8px;
        
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

   button {
  display: inline-block;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  background-color: #4d94ff;
  color: white;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  margin-top: 10px;
}

button:hover {
  background-color: #1a75ff;
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
      
</style>
</head>
<body>
<nav>
      <a href="index.jsp">Home</a>
      <a href="<%= request.getContextPath() %>/new">Register Course</a>
    </nav>
    <div class="header">
        <h1>Training Program Registration</h1>
    </div>
    <div class="content-section">
        <div class="content-text">
            <h1>Thank you!!!</h1>
            <p>Thank you for registering for our training course! We are excited to have you as a participant 
            and look forward to providing you with a valuable learning experience. Our experienced instructors 
            will be available to guide you through the course material, and we believe that the knowledge and 
            skills you gain from this program will benefit you both personally and professionally. Thank you for 
            investing in your professional development, and we can't wait to get started!</p>
        </div>
    </div>
    <div class="content-table">
        <table id="resultTable">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Register Course</th>
                <th>Register Email</th>
                <th>Course Amount</th>
                <th>Time</th>
            </tr>
            <% if (request.getAttribute("Course") != null) {
                CourseRegister courseDetails = (CourseRegister) request.getAttribute("Course");
            %>
            <tr>
            <td><%=courseDetails.getFirstName()%></td>
            <td><%=courseDetails.getLastName()%></td>
            <td><%=courseDetails.getCourseName()%></td>
            <td><%=courseDetails.getEmail()%></td>
            <td><%= courseDetails.getPrice()%></td>
            <td><%= courseDetails.getTime()%></td>
           </tr>
                        <%} %>
</table>

   <div style="text-align: center;">
  <a href="<%= request.getContextPath() %>/index">
    <button style="margin-left: auto; margin-right: auto;">Go Back to Home Page</button>
  </a>
  <a href="<%= request.getContextPath() %>/new">
    <button style="margin-left: auto; margin-right: auto;">Register another course</button>
  </a>
</div>
  </div>
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