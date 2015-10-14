require_relative 'spec_helper'

#######################################################
describe Mastermind::CodeComp do
  before :each do
    @code_comp = Mastermind::CodeComp.new
  end

  describe "#new" do
    it "returns a new CodeComp object" do
      expect(@code_comp).to be_a Mastermind::CodeComp
    end
  end

  describe "#guess_status" do
    it "should throw an error when called without argument" do
      expect{@code_comp.guess_status}.to raise_error(ArgumentError)
    end
    # it "should return an array when called" do
    #   expect(@code_comp.guess_status(:computercode)).to be_a String
    # end
  end
end