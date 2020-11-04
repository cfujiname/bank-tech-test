require 'transactions'

describe Transactions do
  subject(:transactions) { Transactions.new }

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
      expect(transactions.deposit(1000)).to eq 1000
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

  
end
