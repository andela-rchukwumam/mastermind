require_relative 'spec_helper'
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