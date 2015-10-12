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
    it "should save the game data to a file" do
      allow(@game_data).to receive(:puts).and_return(nil)
      allow(@message).to receive(:level_msg).and_return(nil)
      allow(@game_data).to receive(:gets).and_return("y")
      allow(@message).to receive(:name_msg).and_return(nil)
      expect{@game_data.game_data}.to raise_error(ArgumentError)
    end

    #another
  end
end
  #######################################################