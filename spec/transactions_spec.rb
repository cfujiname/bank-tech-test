require 'transactions'

describe Transactions do
  subject(:transactions) { Transactions.new }

  let(:transaction1) do
    { date: Date, credit: '1000.00', debit: '-----', balance: '1000.00' }
  end

  let(:transaction2) do
    { date: Date, credit: '-----', debit: '500.00', balance: '500.00' }
  end

  Date = Time.now.strftime('%d/%m/%y')

  describe '#initialize' do
    it 'should have a default balance of 0' do
      expect(transactions.balance).to eq 0
    end

    it 'should have a list of transactions' do
      expect(transactions.list_of_transactions).to be_an(Array)
    end
  end

  describe '#deposit' do
    it 'allows user to deposit into account' do
      transactions.deposit(1000)
      expect(transactions.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'allows user to withdraw from account' do
      transactions.deposit(1000)
      transactions.withdraw(500)
      expect(transactions.balance).to eq 500
    end

    it 'raises an error withdraw amount is more than balance amount' do
      expect { transactions.withdraw(1000) }.to raise_error 'No funds available'
    end
  end

  describe 'list_of_transactions' do
    it 'contains each transaction' do
      transactions.deposit(1000)
      expect(transactions.list_of_transactions).to include(transaction1)
    end
    it 'contains many transactions' do
      transactions.deposit(1000)
      transactions.withdraw(500)
      expect(transactions.list_of_transactions).to include(transaction1, transaction2)
    end
  end
end
