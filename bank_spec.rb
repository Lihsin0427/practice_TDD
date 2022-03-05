class Bank

end 

RSpec.describe Bank do

  it "可以存錢"do
  # 3A
  # Arrang
  account = Bank.new(10)

  # Act
  account.deposit(5)

  # Assert
  expect(account.balance).to be 15
  end


end