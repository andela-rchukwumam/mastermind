require_relative 'spec_helper'

#######################################################
describe GameEngine do
  before :each do
    @game_engine = GameEngine.new
  end
  describe "#new" do
    it "returns a new GameEngine object" do
      expect(@game_engine.class).to eql(GameEngine)
    end
  end

  describe"self.start" do
    it "should print the two messages welcome and request" do
      expect(self.start).to eql
    end
  end
end
########################################################

#######################################################
describe Message do
  before :each do
    @message = Message.new
  end
  describe "#new" do
    it "returns a new Message object" do
      expect(@message.class).to eql(Message)
    end
  end
end
########################################################

#######################################################
describe CodeGenerator do
  before :each do
    @code_generator = CodeGenerator.new
  end
  describe "#new" do
    it "returns a new CodeGenerator object" do
      expect(@code_generator.class).to eql(CodeGenerator)
    end
  end
end
########################################################