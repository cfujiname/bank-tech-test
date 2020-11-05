require 'account'

describe Account do
  subject(:account) { Account.new(transactions) }
  let(:transactions) { double('transactions') }

  describe '#initialize' do
    it 'initializes transactions' do
      expect(account.transactions).to eq(transactions)
    end
  end

  describe '#deposit' do
    it 'allows deposit method on transactions' do
      allow(transactions).to receive(:deposit)
      account.deposit(1000)
      expect(transactions).to have_received(:deposit)
    end
  end
end