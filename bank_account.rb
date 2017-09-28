# Create a class called BankAccount.
class BankAccount
  # Add a class variable called @@interest_rate that is a float representing the interest rate for all the accounts in the bank. This is a class variable because it is the same value for all accounts.
  # Add another class variable called @@accounts that starts as an empty array. This will eventually store the list of all bank accounts in the bank.
  @@interest_rate = 0.0
  @@accounts = []

  #Add an initialize instance method that sets @balance to zero. You should also add reader and writer methods for balance to your class. Balance is stored in an instance variable because the value needs to be different from account to account.

  def initialize
    @balance = 0


  end

  #READER



# Add an initialize instance method that sets @balance to zero. You should also add reader and writer methods for balance to your class. Balance is stored in an instance variable because the value needs to be different from account to account

  def balance
    @balance
  end

  #WRITER

  def write_balance(balance)
    @balanbce = balance
  end

end

td_account = BankAccount.new
puts td_account.balance
puts td_account.write_balance(10)
puts td_account.balance
