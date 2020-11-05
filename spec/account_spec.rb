require 'account'

describe Account do
  subject(:account) { Account.new(transactions, statement) }
  let(:transactions) { double('transactions') }
  let(:statement) { double('statement') }

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

  describe '#withdraw' do
    it 'allows withdraw method on transactions' do
      allow(transactions).to receive(:withdraw)
      account.withdraw(500)
      expect(transactions).to have_received(:withdraw)
    end
  end

  describe '#print_statement' do
    before do
      allow(statement).to receive(:print_statement)
      allow(transactions).to receive(:list_of_transactions)
    end
    it 'allows print_statement method on statements' do
      account.print_statement
      expect(statement).to have_received(:print_statement)
    end
    it 'allows list_of_transactions on statement' do
      account.print_statement
      expect(transactions).to have_received(:list_of_transactions)
    end
  end
end
