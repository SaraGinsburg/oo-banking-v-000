class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
  end

  # describe '#execute_transaction' do
  #   it "can execute a successful transaction between two accounts" do
  #     transfer.execute_transaction
  #     expect(amanda.balance).to eq(950)
  #     expect(avi.balance).to eq(1050)
  #     expect(transfer.status).to eq("complete")
  #   end
  #
  #   it "each transfer can only happen once" do
  #     transfer.execute_transaction
  #     expect(amanda.balance).to eq(950)
  #     expect(avi.balance).to eq(1050)
  #     expect(transfer.status).to eq("complete")
  #     transfer.execute_transaction
  #     expect(amanda.balance).to eq(950)
  #     expect(avi.balance).to eq(1050)
  #   end
  #
  #   it "rejects a transfer if the sender doesn't have a valid account" do
  #     expect(bad_transfer.execute_transaction).to eq("Transaction rejected. Please check your account balance.")
  #     expect(bad_transfer.status).to eq("rejected")
  #   end
  # end

end
