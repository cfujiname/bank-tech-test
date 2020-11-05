require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:list_of_transactions) do
    [{ date: '03/11/20',
       credit: format('%.2f', 1000),
       debit: '-----',
       balance: format('%.2f', 1000) },
     { date: '04/11/20',
       credit: '-----',
       debit: format('%.2f', 500),
       balance: format('%.2f', 500) }]
  end

  describe '#print_statement' do
    let(:print_statement) do
      " Date     ||  Credit  ||  Debit  ||  Balance\n" \
      " 04/11/20 ||  -----  ||  500.00  ||  500.00\n" \
      " 03/11/20 ||  1000.00  ||  -----  ||  1000.00\n"
    end

    it 'prints the list of transactions as per acceptance criteria' do
      expect { statement.print_statement(list_of_transactions) }.to output(print_statement).to_stdout
    end
  end
end
