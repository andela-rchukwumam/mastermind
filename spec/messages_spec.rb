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
    it "should be a string and contain the word welcome" do
      expect(@message.welcome_msg).to include("WELCOME")
      expect(@message.welcome_msg).to be_a String
    end
  end

  describe "#request_msg" do
    it "should be a string and contain the word would" do
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
    it "should be a string and contain the word quit" do
      expect(@message.quit_msg).to include("quit")
      expect(@message.quit_msg).to be_a String
    end
  end

  describe "#level_msg" do
    it "should be a string and contain the word level" do
      expect(@message.level_msg).to include("level")
      expect(@message.level_msg).to be_a String
    end
  end

  describe "#cheat_msg" do
    it "should be a string and contain the words game cheat" do
      expect(@message.cheat_msg).to include("game cheat")
      expect(@message.cheat_msg).to be_a String
    end
  end

  describe "#beginner_msg" do
    it "should be a string and contain the word beginner" do
      expect(@message.beginner_msg).to include("beginner")
      expect(@message.beginner_msg).to be_a String
    end
  end

  describe "#instruction_msg" do
    it "should be a string and contain the word instructions" do
      expect(@message.instruction_msg).to include("When you click play")
      expect(@message.instruction_msg).to be_a String
    end
  end

end
########################################################