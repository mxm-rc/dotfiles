# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and balance, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account info
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the balance variable)

  attr_reader :name, :balance
  attr_writer :add_transaction, :transactions, :withdraw, :deposit

  MIN_DEPOSIT = 100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit >= MIN_DEPOSIT

    @password     = password
    @transactions = []
    @balance      = 0
    @name         = name
    @iban         = iban

    add_transaction(initial_deposit)
  end

  def withdraw(negative_amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(-negative_amount)
    p "You’ve just withdrawn #{negative_amount} euros "
  end

  def deposit(positive_amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(positive_amount)
    p "You’ve just deposited #{positive_amount} euros "
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array!
    if args[:password].nil?
      "no password given"
    elsif args[:password] != @password
      "wrong password"
    else
      p @transactions.to_s
    end
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    iban_array = @iban.split("-").to_a
    "#{iban_array[0]}#{'*' * 20}#{iban_array[-1]}"
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: return a string with the account owner, the hidden iban and the balance of the account
    "Owner: #{@name} - IBAN: #{iban} - Balance: #{@balance} euros"
  end

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current balance (which represents the balance of the account)
    @transactions << amount
    @balance += amount
  end
end