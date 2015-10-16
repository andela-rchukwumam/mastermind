require_relative 'spec_helper'

#######################################################
describe Mastermind::GameData do
  before :each do
    @game_data = Mastermind::GameData.new
    @message = Mastermind::Message.new
    @game_engine = Mastermind::GameEngine.new
  end
  describe "#new" do
    it "returns a new GameData object" do
      expect(@game_data).to be_a Mastermind::GameData
    end
  end

  describe"#game_data" do
    it "should raise error when called with wrong number of arguments" do
      expect{@game_data.game_data}.to raise_error(ArgumentError)
    end

    it "should save to file" do
      allow(@game_data).to receive(:puts).and_return("tested")
      allow(@game_data).to receive(:gets).and_return("y")
      allow(@game_data).to receive(:user_input).and_return(nil)
      allow(@game_data).to receive(:record).and_return(nil)
      expect(@game_data.game_data(11.0, 2, "./bin/testgameresults.txt")).to be nil
    end

    # it "should read from file" do
    #   allow(@game_data).to receive(:puts).and_return(nil)
    #   allow(@game_data).to receive(:gets).and_return("y")
    #   allow(@game_data).to receive(:user_input).and_return(nil)
    #   # require 'pry'; binding.pry
    #   expect(@game_data.record("./bin/testgameresults.txt")).to eql(nil)
    # end
  end
end
  #######################################################