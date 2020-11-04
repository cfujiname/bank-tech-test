class Transactions
  attr_reader :balance, :list_of_transactions

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @list_of_transactions = []
  end

  def deposit(amount)
    1000
  end
end
