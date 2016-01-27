class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}"
    else
      pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      balance - amount
      puts "Withdrew $#{amount}. New balance: $#{@balance}."
    else
      pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    return "Access denied: incorrect PIN."
  end

end

checking_account = Account.new("Dude")

puts checking_account.display_balance(0000)
puts checking_account.display_balance(1234)
puts checking_account.withdraw(1234, 50)
