class BankError < StandardError
end

class Bank

  def initialize(money)
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      raise BankError.new("amount must greater than zero")
    end
    @money += amount
    
  end

  def withdraw(amount)
    
    if amount <= 0
      raise BankError.new("amount must greater than zero")
    end

    @money -= amount

    return amount
  end

  def balance
    @money
  end

end 