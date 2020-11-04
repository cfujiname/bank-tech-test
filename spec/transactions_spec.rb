require 'transactions'

describe Transactions do
  subject(:transactions) { Transactions.new }

  describe '#initialize' do
    it 'should have a default balance of 0' do
      expect(transactions.balance).to eq 0
    end
  end
  
end