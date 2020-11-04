class Statement

  def print_statement(list_of_transactions)
    columns
    list_of_transactions.reverse_each do |transaction|
      print " #{transaction[:date]} ||",
      "  #{transaction[:credit]}  ||",
      "  #{transaction[:debit]}  ||",
      "  #{transaction[:balance]}\n"
    end
  end

  private 

  def columns
    puts ' Date     ||  Credit  ||  Debit  ||  Balance'
  end
end
