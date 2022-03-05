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
    it "可以領錢" do
      account = Bank.new(10)
      money = account.withdraw(3)

      expect(money).to be 3
      expect(account.balance).to be 7
    end

    it "不能領負的錢" do
      account = Bank.new(10)
      expect { account.withdraw(-3) }.to raise_exception(BankError)
    end

    # it "不能領超過餘額的錢" do
    #   account = Bank.new(10)
    #   expect { account.withdraw(20) }.to raise_exception(BankError)

    # end

  end
  
end