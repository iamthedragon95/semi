<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> WebFlow </title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="home.obj">Home</a><br />
			<br />
			<sf:form modelAttribute="newuser">
				<sf:label path="fname">Name:</sf:label>${newuser.fname}
					<br />
				<br />
				<sf:label path="email">Email Id:</sf:label>${newuser.email}
					<br />
				<br />
				<sf:label path="age">Age :</sf:label>${newuser.age}
					<br />
				<br />
				<sf:label path="username">Username:</sf:label>${newuser.username}
					<br />
				<br />
				<sf:label path="password">Password	:</sf:label>${newuser.password}
					<br />
				<br />
				<sf:label path="cPassword">Conformation password:</sf:label>${newuser.cPassword}
					<br />
				<br />
				<sf:label path="phnumber">Number:</sf:label>${newuser.phnumber}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>