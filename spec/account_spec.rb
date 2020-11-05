require 'account'

describe Account do
  subject(:account) { Account.new(transactions) }
  let(:transactions) { double('transactions') }

  describe '#initialize' do
    it 'initializes transactions' do
      expect(account.transactions).to eq(transactions)
    end
  end
end