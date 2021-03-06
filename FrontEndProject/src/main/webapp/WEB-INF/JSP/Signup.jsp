<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.container
{
max-width:360px;
background-color:lightgrey;
margin-top:6%;
margin-left:50%;
border:1px solid black";
}
input[type=text], input[type=password] {
  width: 300px;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: black;
  border-radius: 25px;
}
input[type=text]:focus, input[type=password]:focus {
  background-color:white;
  fo
  outline: none;
}
.signup {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
h5
{
text-align:center;
color:red;
}
</style>

</head>
<body >



<form action="<c:url value="/AddSignup"/>" method="post">
<div class="container">
<div class="login">
        
<h1 align="center">Create an Account</h1>
<div class="text-center">
<input type="text"  name="name"  placeholder="Name" maxlength="20" pattern="[A-Za-z]+" title="Use Only Letters" required="required">
<h5>${alert}</h5></div>
<div class="text-center">
<input type="text" name="username"  placeholder="What's your username?"  maxlength="20" pattern="[A-Za-z]+" title="Be Unique" required="required"/>
</div>
<div class="text-center">
<input type="password"  name="userpassword"  placeholder="Choose a password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Use this format(Eg:Praveen_123)" required="required" >
</div>
<div class="text-center">
<input type="text"  name="usermobile"  placeholder="MobileNo" pattern="[0-9]{10}" title="Use Only Numbers" required="required">
</div>
<div class="text-center">
<input type="text"  name="useremail"  placeholder="Email" pattern="[a-z0-9._%+-][$#&*]+@[a-z]+.[a-z]{2,}+" title="use this format(Eg:praveen13@gmail.com)" required="required">
</div>
<div class="text-center">
<input type="submit" class="signup" value="Sign me up!" />
</div>

<div class="text-center">
<p>Already have an account? <a href="<c:url value="/login"/>" id="signin_id">Signin</a></p>
</div>


</div>
</div>
</form>
</body>
</html>