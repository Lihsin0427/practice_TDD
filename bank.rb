class BankError < StandardError
end

class Bank

  def initialize(money)
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      raise BankError
    end
    @money += amount
    
  end

  def balance
    @money
  end

end 