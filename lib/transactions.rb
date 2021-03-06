class Transactions
  attr_reader :balance, :list_of_transactions

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @list_of_transactions = []
  end

  def deposit(amount)
    credit_balance(amount)
    display_deposit(amount)
  end

  def withdraw(amount)
    raise 'No funds available' if @balance < amount

    debit_balance(amount)
    display_withdrawal(amount)
  end

  private

  def credit_balance(amount)
    @balance += amount
  end

  def debit_balance(amount)
    @balance -= amount
  end

  def display_deposit(amount)
    transaction = {
      date: Time.now.strftime('%d/%m/%y'),
      credit: format('%.2f', amount),
      debit: '-----',
      balance: format('%.2f', @balance)
    }
    @list_of_transactions.push(transaction)
  end

  def display_withdrawal(amount)
    transaction = {
      date: Time.now.strftime('%d/%m/%y'),
      credit: '-----',
      debit: format('%.2f', amount),
      balance: format('%.2f', @balance)
    }
    @list_of_transactions.push(transaction)
  end
end
