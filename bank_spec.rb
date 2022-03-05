require "./bank"

RSpec.describe Bank do

  it "可以存錢"do
  # 3A, Arrange / Act / Assert

  account = Bank.new(10)
  account.deposit(5)

  expect(account.balance).to be 15
  end

end