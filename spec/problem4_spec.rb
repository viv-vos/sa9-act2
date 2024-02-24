require 'problem4'
RSpec.describe BankAccount do
  let(:money) {BankAccount.new}

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      money.deposit(50)
      expect(money.balance).to eq(50)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      money.deposit(50)
      money.withdraw(10)
      expect(money.balance).to eq(40)
    end

    it "does not change the balance if insufficient funds" do
      money.deposit(50)
      money.withdraw(60)
      expect(money.balance).to eq(50)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      money.deposit(50)
      money.withdraw(10)
      money.deposit(100)
      expect(money.balance).to eq(140)
    end
  end
end
