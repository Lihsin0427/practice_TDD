require "./bank"

RSpec.describe Bank do
  
  context "存錢功能" do

    # test case 測試個案
    it "可以存錢"do
    # 3A, Arrange / Act / Assert

      account = Bank.new(10)
      account.deposit(5)

      expect(account.balance).to be 15
    end

    it "不可以存 0 元或是小於 0 元的金額" do
      account = Bank.new(10)
      expect { account.deposit(-1) }.to raise_exception(BankError)

      # expect(account.balance).to be 10
    end

  end

  context "領錢功能" do

  end
  
end