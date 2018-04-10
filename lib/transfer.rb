class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
end

# let(:transfer) { Transfer.new(amanda, avi, 50) }
# let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }
#
# describe 'Transfer' do
#   describe 'initialize' do
#     it "can initialize a Transfer" do
#       expect(transfer).to be_a(Transfer)
#     end
#
#     it "initializes with a sender" do
#       expect(transfer.sender).to eq(amanda)
#     end
#
#     it "initializes with a receiver" do
#       expect(transfer.receiver).to eq(avi)
#     end
#
#     it "always initializes with a status of 'pending'" do
#       expect(transfer.status).to eq("pending")
#     end
#
#     it "initializes with a transfer amount" do
#       expect(transfer.amount).to eq(50)
#     end
#   end
