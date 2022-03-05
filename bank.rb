class BankError < StandardError
end

class BankAmountNegativeError < StandardError
end

class BankBlanceError < StandardError
end


class Bank

  def initialize(money)
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      raise BankAmountNegativeError.new("amount must greater than zero")
    end
    @money += amount
    
  end

  def withdraw(amount)
    
    if amount <= 0
      raise BankAmountNegativeError.new("amount must greater than zero")
    end
    
    if amount > @money
      raise BankBlanceError.new("Blance is not enough")
    end

    @money -= amount

    return amount
  end

  def balance
    @money
  end

end 