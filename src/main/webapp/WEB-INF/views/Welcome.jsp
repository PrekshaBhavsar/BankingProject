<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-image:url("/Images/BankLogo.png");
	background-repeat: no-repeat;
    background-size: 500px 500px;
    background-position-x: center;
    background-position-y: 100px;

}
h2#Welcome{

	color: blue;
	margin: 234px;
	font-family: inherit;
	text-align: center;
	position:relative;
	bottom:205px;
	font-weight: 900;
	font-size: xxx-large;
	
}

	

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<jsp:include page="Header.jsp" />
<h2 id="Welcome">Welcome to ICNI Bank</h2>
<jsp:include page="Footer.jsp" />
</body>
</html>