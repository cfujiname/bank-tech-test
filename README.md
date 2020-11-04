# Bank Tech Test

Practice OO and TDD 

## Acceptance Criteria


Given a client makes a _deposit_ of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a _withdrawal_ of 500 on 14-01-2012
When she prints her bank _statement_
Then she would see

date       || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00


## Structuring process

- A bank account can do (super class): 
  - deposit, withdrawal, print statement of transactions
- A transaction (sub class) can be either a deposit or a withdrawal
- Printing statement (sub class) contains history of transactions
- All transactions contain date

Class Bank Account    <<  Transaction (deposit/withdrawal) 
                      <<  Print Statement

  - orchestrates the methods from Transactions and PrintStatement

Class Transactions
  - should have a _default balance_ of 0
  - has _deposit_ method
  - has _withdrawal_ method
  - has a _list of transactions_
  - has dates of each transaction

Class PrintStatement
  - has the _history of transactions_ to print (depends on Transactions class)
  - _prints_ the history of transactions



