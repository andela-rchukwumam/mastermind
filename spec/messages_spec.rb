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

  describe "#medium_msg" do
    it "should be a string and contain the word medium" do
      expect(@message.medium_msg).to include("medium")
      expect(@message.medium_msg).to be_a String
    end
  end

  describe "#advanced_msg" do
    it "should be a string and contain the word advanced" do
      expect(@message.advanced_msg).to include("advanced")
      expect(@message.advanced_msg).to be_a String
    end
  end

  describe "#instruction_msg" do
    it "should be a string and contain the word instructions" do
      expect(@message.instruction_msg).to include("When you click play")
      expect(@message.instruction_msg).to be_a String
    end
  end

  describe "#long_entry" do
    it "should be a string and contain the words too long" do
      expect(@message.long_entry).to include("too long")
      expect(@message.long_entry).to be_a String
    end
  end

  describe "#short_entry" do
    it "should be a string and contain the words too short" do
      expect(@message.short_entry).to include("too short")
      expect(@message.short_entry).to be_a String
    end
  end

  describe "#guess_msg" do
    it "should be a string and contain the word guess" do
      expect(@message.guess_msg(1)).to include("guess")
      expect(@message.guess_msg(1)).to be_a String
    end
    it "should throw an error when called without arguments" do
      expect{@message.guess_msg}.to raise_error(ArgumentError)
    end
      it "should throw an error when argument is a string" do
      expect{@message.guess_msg("string")}.to raise_error(TypeError)
    end
  end

  describe "#name_msg" do
    it "should be a string and contain the word name" do
      expect(@message.name_msg).to include("name")
      expect(@message.name_msg).to be_a String
    end
  end

  describe "#data_msg" do
    it "should be a string and contain the word completed" do
      expect(@message.data_msg("string", 1.0)).to include("completed")
      expect(@message.data_msg("string", 1.0)).to be_a String
    end
    it "should throw an error when called without arguments" do
      expect{@message.data_msg}.to raise_error(ArgumentError)
    end
    it "should throw an error when called with one argument" do
      expect{@message.data_msg("string")}.to raise_error(ArgumentError)
    end
    it "should throw an error when argument is the wrong type" do
      expect{@message.data_msg(1.0, "string")}.to raise_error(TypeError)
    end
      it "should throw an error when argument is the wrong type" do
      expect{@message.data_msg("string", "string")}.to raise_error(TypeError)
    end
  end

  describe "#rank_msg" do
    it "should be a string and contain the word rank" do
      expect(@message.rank_msg).to include("rank")
      expect(@message.rank_msg).to be_a String
    end
  end

  describe "#save_msg" do
    it "should be a string and contain the word save" do
      expect(@message.save_msg).to include("save")
      expect(@message.save_msg).to be_a String
    end
  end

  describe "#won_msg" do
    it "should be a string and contain the word Congratulations" do
      expect(@message.won_msg(1.0)).to include("Congratulations")
      expect(@message.won_msg(1.0)).to be_a String
    end
    it "should throw an error when called without arguments" do
      expect{@message.won_msg}.to raise_error(ArgumentError)
    end
      it "should throw an error when argument is a different type" do
      expect{@message.won_msg("string")}.to raise_error(TypeError)
    end
  end

  describe "#match_msg" do
    it "should be a string and contain the word matches" do
      expect(@message.match_msg(1, 1)).to include("matches")
      expect(@message.match_msg(1, 1)).to be_a String
    end
    it "should throw an error when called without arguments" do
      expect{@message.match_msg}.to raise_error(ArgumentError)
    end
    it "should throw an error when called with one argument" do
      expect{@message.match_msg(1)}.to raise_error(ArgumentError)
    end
    it "should throw an error when called with wrong argument" do
      expect{@message.match_msg(1, null)}.to raise_error(NameError)
    end
  end

end
########################################################