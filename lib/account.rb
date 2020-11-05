require_relative './transactions'
require_relative './statement'

class Account
  attr_reader :transactions, :statement

  def initialize(transactions, statement)
    @transactions = transactions
    @statement = statement
  end

  def deposit(amount)
    transactions.deposit(amount)
  end

  def withdraw(amount)
    transactions.withdraw(amount)
  end

  def print_statement
    statement.print_statement(transactions.list_of_transactions)
  end
end
