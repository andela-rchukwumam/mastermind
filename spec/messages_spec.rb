require_relative 'spec_helper'
#######################################################
describe Mastermind::Message do
  before :each do
    @message = Mastermind::Message.new
  end
  describe "#new" do
    it "returns a new Message object" do
      expect(@message).to eql(Mastermind::Message)
    end
  end
end
########################################################