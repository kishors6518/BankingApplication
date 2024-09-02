<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bank.Bank"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICICI</title>
</head>
<body>
<%
	String userName=request.getParameter("username");
	String password=request.getParameter("password");
	long accno=Long.parseLong(request.getParameter("accNo"));
	String ifsc=request.getParameter("ifsc");
	String address=request.getParameter("address");
	double balance=Double.parseDouble(request.getParameter("balance"));

	
	Bank.setUserName(userName);
	Bank.setPassword(password);
	Bank.setAccNo(accno);
	Bank.setIfsc(ifsc);
	Bank.setAddress(address);
	Bank.setBalance(balance);
%>
<form action="processWithdraw.jsp" method="post">
	Withdraw amout:<input type="text" name="withdraw"><br>
	<input type="submit" value="Withdraw Amout">
</form><br><br>

<form action="processDeposit.jsp" method="post">
	Deposit amout:<input type="text" name="deposit"><br>
	<input type="submit" value="Deposit Amout">
</form>

</body>
</html>