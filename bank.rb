require './bank_errors.rb'

class Bank
  attr_reader :balance

  def initialize(money)
    @balance = money
  end

  def deposit(amount)
    if amount <= 0
      raise BankAmountNegativeError.new("amount must greater than zero")
    end
    @balance += amount
    
  end

  def withdraw(amount)
    
    if amount <= 0
      raise BankAmountNegativeError.new("amount must greater than zero")
    end
    
    if not enough?(amount)
      raise BankBlanceError.new("Blance is not enough")
    end

    @balance -= amount

    return amount
  end

  private
  
  def enough?(amount)
    amount < @balance
  end

end 