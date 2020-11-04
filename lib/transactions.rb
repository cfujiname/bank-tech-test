class Transactions
  attr_reader :balance, :list_of_transactions

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @list_of_transactions = []
  end

  def deposit(amount)
    increase_balance(amount)
  end

  def withdraw(amount)
    raise 'No funds available' if @balance < amount

    decrease_balance(amount)
  end

private

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end
end
