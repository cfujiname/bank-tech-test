require_relative './transactions'
require_relative './statement'

class Account
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end 

  def deposit(amount)
    transactions.deposit(amount)
  end
end
