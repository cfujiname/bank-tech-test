# Bank Tech Test

Practice OO and TDD 

## Implementation

- Analise the acceptance criteria and structure the process through diagramming

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


- it is in reversed chronological order

## Structuring process

- A bank account can do (super class): 
  - deposit, withdrawal, print statement of transactions
- A transaction (sub class) can be either a deposit or a withdrawal
- Printing statement (sub class) contains history of transactions
- All transactions contain date

### Class Transactions
  - should have a _default balance_ of 0
  - has _deposit_ method
  - has _withdrawal_ method (user should not be allowed to withdraw more than balace permits - edge case)
  - has a _list of transactions_
  - has _dates_ of each transaction

### Class Statement
  - has the _list of transactions_ to print (depends on Transactions class)
  - _prints_ the list of transactions

### Class Bank Account    
<<  Transaction (deposit/withdrawal) 

<<  Statement

  - orchestrates the methods from Transactions and Statement
  - has transactions on itself
  - can call the methods _deposit_ and _withdraw_
  - can print statements



