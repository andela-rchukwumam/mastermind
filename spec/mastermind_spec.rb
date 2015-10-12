require_relative 'spec_helper'

#######################################################
describe Mastermind::GameEngine do

  before :each do
    @game_engine = Mastermind::GameEngine.new
    @message = Mastermind::Message.new
  end
  describe "#new" do
    it "returns a new GameEngine object" do
      expect(@game_engine).to be_a Mastermind::GameEngine
    end
  end

  describe"#start" do
    it "should print the two messages welcome and request" do
      allow(@game_engine).to receive(:user_input).and_return(nil)
      expect{@game_engine.start}.to output(/WELCOME/).to_stdout
      expect{@game_engine.start}.to output(/\(p\)lay/).to_stdout
      # puts "finished start"
    end
  end

  describe"#user_input" do
    it "should check for user choice and show quit message " do
      allow(@game_engine).to receive(:gets).and_return("q")
      allow(@game_engine).to receive(:puts).and_return(nil)
      allow(@message).to receive(:quit_msg).and_return(nil)
      expect(@game_engine.user_input).to be nil
      # puts "started user_input"
    end

    it "should check for user input and play game " do
      allow(@game_engine).to receive(:play).and_return(nil)
      allow(@game_engine).to receive(:gets).and_return("p")
      allow(@game_engine).to receive(:puts).and_return(nil)
      expect(@game_engine.user_input).to be nil
    end

    it "should check for user choice and show instruction message " do
      # allow(@game_engine).to receive(:user_input).and_return(nil)
      allow(@game_engine).to receive(:gets).and_return("i")
      allow(@game_engine).to receive(:puts).and_return(nil)
      allow(@message).to receive(:instruction_msg).and_return(nil)
      expect(@game_engine.user_input(true)).to be nil
    end
  end

  describe"#game_level" do
    it "should throw error if called without an argument" do
      expect{@game_engine.game_level}.to raise_error (ArgumentError)
    end
    it "should return the advanced level according to user choice" do
      expect(@game_engine.game_level("a")).to eql(:advanced)
    end
    it "should return the beginner level according to user choice" do
      expect(@game_engine.game_level("b")).to eql(:beginner)
    end
    it "should return the medium level according to user choice" do
      expect(@game_engine.game_level("m")).to eql(:medium)
    end
  end

  describe"#play" do
    it "should print the level message and call code generator" do
      allow(@game_engine).to receive(:puts).and_return(nil)
      allow(@game_engine.codegen).to receive(:code_generator).and_return(nil)
      allow(@game_engine).to receive(:gets).and_return("b")
      expect(@game_engine.play).to be nil
    end
  end

end
########################################################