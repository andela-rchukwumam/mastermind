require_relative 'spec_helper'

#######################################################
describe Mastermind::Message do
  before :each do
    @message = Mastermind::Message.new
  end
  describe "#new" do
    it "returns a new Message object" do
      expect(@message).to be_a Mastermind::Message
    end
  end

  describe "#welcome_msg" do
    it "should be a string and contain welcome" do
      expect(@message.welcome_msg).to include("WELCOME")
      expect(@message.welcome_msg).to be_a String
    end
  end

  describe "#request_msg" do
    it "should be a string and contain would" do
      expect(@message.request_msg).to include("Would")
      expect(@message.request_msg).to be_a String
    end
  end

  describe "#error_msg" do
    it "should be a string and contain you have exceeded your entries" do
      expect(@message.error_msg).to include("have exceeded")
      expect(@message.error_msg).to be_a String
    end
  end

  describe "#quit_msg" do
    it "should be a string and contain quit" do
      expect(@message.quit_msg).to include("quit")
      expect(@message.quit_msg).to be_a String
    end
  end

  describe "#instruction_msg" do
    it "should be a string and contain instructions" do
      expect(@message.instruction_msg).to include("When you click play")
      expect(@message.instruction_msg).to be_a String
    end
  end


end
########################################################