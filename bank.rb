class Bank
  def initialize(money)
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      raise "amount can not less than zero!"
    end
    @money += amount
    
  end

  def balance
    @money
  end

end 