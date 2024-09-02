package bank;

public class BankBussinessLogic {

	
	public static void withdrawMoney(double amount) {
		Bank.setWithdrawamt(amount);
		Bank.setBalance(Bank.getBalance()-Bank.getWithdrawamt());
	}
	
	public static void depositMoney(double amount)
	{
		Bank.setDepositamt(amount);
		Bank.setDepositamt(Bank.getBalance()+Bank.getDepositamt());
	}
}
