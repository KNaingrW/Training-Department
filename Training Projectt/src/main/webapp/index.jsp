<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style>
  body {
      background-color: #f2f2f2;
    }
    
    h1 {
      font-size: 30px;
      color: #007bff;
      margin-top: 50px;
      animation-name: fadeIn;
      animation-duration: 1.5s;
    }
    
    .container {
      margin-top: 50px;
    }
    
    .col-lg-4 p {
      font-size: 18px;
      color: #333;
      text-align: justify;
    }
    
    .btn-get-started {
      background-color: #007bff;
      color: #fff;
      padding: 10px 30px;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      margin-top: 20px;
      display: inline-block;
    }
    
    .btn-get-started:hover {
      background-color: #0062cc;
      transition: background-color 0.3s ease;
    }
    
    /* Style images */
    .col-lg-4 img {
      border-radius: 50%;
      margin-top: 20px;
      animation-name: fadeIn;
      animation-duration: 1.5s;
      animation-delay: 0.5s;
    }
    
    .col-lg-4 img:hover {
      transform: scale(1.1);
      transition: transform 0.5s ease;
    }
    @keyframes fadeIn {
      0% {
        opacity: 0;
        transform: translateY(50px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
    
    @keyframes slideUp {
      0% {
        opacity: 0;
        transform: translateY(50px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
    
    .btn-get-started {
      animation-name: slideUp;
      animation-duration: 1.5s;
      animation-delay: 1s;
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
<center><h1 style="font-size:30px">Training Department</h1></center>
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <p><b>The Training Department offers diverse courses with flexible scheduling options that cater to the learners' requirements. 
        They provide morning, afternoon, and evening sessions to enable everyone to choose the time that suits them the best.
        The department aims to help learners enhance their skills and knowledge to advance their careers, irrespective of whether they
        are students or working professionals. The trainers are experienced professionals who are committed to providing quality training
        to the learners.By enrolling in the Training Department, learners can be assured of expert guidance and support to reach their 
        full potential.</b></p>
        <a href="<%= request.getContextPath() %>/new" class="btn-get-started scrollto">Register Course</a>
      </div>
      <div class="col-lg-4">
        <img src="https://bit.ly/3zjkfA0" width="250px" height="250px">
      </div>
      <div class="col-lg-4">
        <img src="https://bit.ly/3lYuZQX" width="250px" height="250px">
      </div>
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