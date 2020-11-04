require 'transactions'

describe Transactions do
  subject(:transactions) { Transactions.new }

  describe '#initialize' do
    it 'should have a default balance of 0' do
      expect(transactions.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'allows user to deposit into account' do
      expect(transactions.deposit(1000)).to eq 1000
    end
  end
end
