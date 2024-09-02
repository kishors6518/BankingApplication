<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bank.Bank" import="bank.BankBussinessLogic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw</title>
</head>
<body>
<%
	double withdrawAmt=Double.parseDouble(request.getParameter("withdraw"));
	if(Bank.getBalance()<withdrawAmt)
	{
		out.print("Insufficient Balance");
	}
	else
	{
		BankBussinessLogic.withdrawMoney(withdrawAmt);
		out.print("<h1>Withdraw "+Bank.getWithdrawamt()+" rupees and<br> Account balance is "+Bank.getBalance()+"</h1>");
	}

%>

</body>
</html>