require_relative 'spec_helper'

#######################################################
describe Mastermind::GameEngine do

  before :each do

    @game_engine = Mastermind::GameEngine.new
  end
  describe "#new" do
    it "returns a new GameEngine object" do
      expect(@game_engine).to be_a Mastermind::GameEngine
    end
  end

  describe"start" do
    let(:message){ Mastermind::Message.new }
    it "should print the two messages welcome and request" do
      allow(Mastermind::GameEngine).to receive(:user_input).and_return(nil)
      allow(message).to receive(:welcome_msg).and_return(nil)
      allow(message).to receive(:request_msg).and_return(nil)
      expect(Mastermind::GameEngine.start).to be nil
      # puts "finished start"
    end
  end

  describe"user_input" do
    it "should check for user choice and show quit message " do
      allow(Mastermind::GameEngine).to receive(:gets).and_return("q")
      allow(Mastermind::GameEngine).to receive(:puts).and_return(nil)
      allow(Mastermind::Message.new).to receive(:quit_msg).and_return(nil)
      expect(Mastermind::GameEngine.user_input).to be nil
      # puts "finished user_input"
    end

    it "should check for user input and play game " do
      allow(Mastermind::GameEngine).to receive(:play).and_return(nil)
      allow(Mastermind::GameEngine).to receive(:gets).and_return("p")
      allow(Mastermind::GameEngine).to receive(:puts).and_return(nil)
      expect(Mastermind::GameEngine.user_input).to be nil
      # puts "finished user_input"
    end
  end

    it "should check for user choice and show instruction message " do
      allow(Mastermind::GameEngine).to receive(:gets).and_return("i")
      allow(Mastermind::GameEngine).to receive(:puts).and_return(nil)
      allow(Mastermind::Message.new).to receive(:instruction_msg).and_return(nil)
      # expect(Mastermind::GameEngine.user_input).to be nil
      # puts "finished user_input"
    end

  describe"game_level" do
    it "should throw error if called without an argument" do
      expect{Mastermind::GameEngine.game_level}.to raise_error (ArgumentError)
    end
    it "should return the advanced level according to user choice" do
      expect(Mastermind::GameEngine.game_level("a")).to eql(:advanced)
    end
    it "should return the beginner level according to user choice" do
      expect(Mastermind::GameEngine.game_level("b")).to eql(:beginner)
    end
    it "should return the medium level according to user choice" do
      expect(Mastermind::GameEngine.game_level("m")).to eql(:medium)
    end
  end

  describe"self.play" do
    it "should print the level message and call code generator" do
      # allow(Mastermind::GameEngine).to receive(:user_input).and_return(nil)
      allow(Mastermind::GameEngine).to receive(:puts).and_return(nil)
      allow(Mastermind::Message.new).to receive(:level_msg).and_return(nil)
      allow(Mastermind::GameEngine).to receive(:gets).and_return("b")
      # allow(Mastermind::CodeGenerator.new).to receive(:code_generator()).and_return(nil)
      expect(Mastermind::GameEngine.play).to be String
    end
  end

end
########################################################



