# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount

   attr_reader :name, :position, :new_iban

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    raise DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = [] #les transactions - va devoir se remplir
    @position = 0 #balance du compte
    @name, @iban = name, iban
    @new_iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    add_transaction(-amount)
    # TODO: returns a string with a message
    puts "You take #{amount}€ and have #{@position} on your bank account"
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    add_transaction(amount)
    # TODO: returns a string with a message
    puts "You put #{amount}€ and have #{@position} on your book"
  end

  def transactions_history(args = {})
    if args[:password] == @password
      print @transactions
    elsif args[:password] != @password
      print "wrong password"
    elsif args[:password] == nil
      print "No Password Given"
    end
  end

  def hiding_iban
    @new_iban = @iban[1..3] + "**************" + @iban[-3..-1]
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    puts "Owner : #{@name}\n Iban : #{@iban}\n Current amount : #{@position}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
     @transactions << amount.to_i
    # TODO: update the current position (which represents the balance of the account)
    @position = @transactions.reduce(:+)
  end

end



