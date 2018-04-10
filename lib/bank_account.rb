class BankAccount
  attr_accessor :balance, :status
  attr_reader :name


  def initialize(name)
    @name = name.capitalize
    @balance = 1000
    @status = "open"
  end
end

# let(:avi) { BankAccount.new("Avi") }

# describe "#initialize" do
#   it "can initialize a Bank Account" do
#     expect(avi).to be_a(BankAccount)
#   end
#
#   it "initializes with a name" do
#     expect(avi.name).to eq("Avi")
#   end
#
#   it "always initializes with balance of 1000" do
#     expect(avi.balance).to eq(1000)
#   end
#
#   it "always initializes with a status of 'open'" do
#     expect(avi.status).to eq("open")
#   end
#
#   it "can't change its name" do
#     expect { avi.name = "Bob" }.to raise_error
#   end
# end
