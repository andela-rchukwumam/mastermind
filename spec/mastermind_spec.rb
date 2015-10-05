require_relative 'spec_helper'

#######################################################
describe Mastermind::GameEngine do
  before :each do
    @game_engine = Mastermind::GameEngine.new
  end
  describe "#new" do
    it "returns a new GameEngine object" do
      expect(@game_engine.class).to eql(Mastermind::GameEngine)
    end
  end

  describe"self.start" do
    it "should print the two messages welcome and request" do
      allow(Mastermind::GameEngine).to receive(:user_input).and_return(nil)
      allow(Mastermind::Message.new).to receive(:welcome_msg).and_return(nil)
      allow(Mastermind::Message.new).to receive(:request_msg).and_return(nil)
      expect(Mastermind::GameEngine.start).to be nil
    end
  end
end
########################################################



#######################################################
describe Mastermind::CodeGenerator do
  before :each do
    @code_generator = Mastermind::CodeGenerator.new
  end
  describe "#new" do
    it "returns a new CodeGenerator object" do
      expect(@code_generator.class).to eql(Mastermind::CodeGenerator)
    end
  end
end
########################################################