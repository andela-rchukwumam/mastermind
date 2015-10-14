require_relative 'spec_helper'

#######################################################
describe Mastermind::GameData do
  before :each do
    @game_data = Mastermind::GameData.new
    @message = Mastermind::Message.new
  end
  describe "#new" do
    it "returns a new GameData object" do
      expect(@game_data).to be_a Mastermind::GameData
    end
  end

  describe"game_data" do
    it "should raise error when called with wrong number of arguments" do
      expect{@game_data.game_data}.to raise_error(ArgumentError)
    end

    it "should be nil" do
      allow(@game_data).to receive(:puts).and_return(nil)
      allow(@message).to receive(:save_msg).and_return(nil)
      allow(@game_data).to receive(:gets).and_return("y")
      # allow(@message).to receive(:name_msg).and_return(nil)
      expect(@game_data.game_data(11.0, 2)).to be nil
    end

    it "should open 'users.txt' and check it" do
      allow_any_instance_of(Mastermind::Message).to receive(:save_msg).and_return(nil)
      allow_any_instance_of(Mastermind::Message).to receive(:name_msg).and_return(nil)
      allow_any_instance_of(Mastermind::Message).to receive(:data_msg).and_return(nil)
      allow(@game_data).to receive(:input) { "y" }
      allow(@game_data).to receive(:name_input) { "test_name" }
      allow(@game_data).to receive(:record).and_return(nil)
      # @game_data.game_data(11.0, 2)
      
      expect(File.exists?("users.txt")).to be true
      expect(File.read("users.txt").include? "test_name").to be true
    end

  end
end
  #######################################################