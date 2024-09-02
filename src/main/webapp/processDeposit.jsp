<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="bank.Bank" import="bank.BankBussinessLogic"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit</title>
</head>
<body>
<%
	double depositAmt=Double.parseDouble(request.getParameter("deposit"));
	if(depositAmt>50000)
	{
		out.print("Days limit is only 50,000");
	}
	else
	{
		BankBussinessLogic.depositMoney(depositAmt);
		out.print("<h1>Deposit "+Bank.getDepositamt()+" rupees and <br> Account balance is "+Bank.getBalance()+"</h1>");
	}


%>

</body>
</html>