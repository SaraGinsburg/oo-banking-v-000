class BankAccount
  attr_accessor :balance, :status
  attr_reader :name, :deposit


  def initialize(name)
    @name = name.capitalize
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
  end
end
