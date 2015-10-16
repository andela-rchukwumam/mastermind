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
    it "should exit when user presses quit" do
      allow(@code_comp).to receive(:gets).and_return("q")
      expect{@code_comp.guess_status("rrrr")}.to raise_error(SystemExit)
    end
    it "should compare the entries" do
      allow(@code_comp).to receive
    end
  end

  describe "#exact_match" do
    it "should return the exact_match" do
      expect(@code_comp.exact_match("rgby", "rrrr")).to eql([1, "-gby"])  
    end
  end

  describe "#partial_match" do
    it "should return the partial_match" do
      expect(@code_comp.partial_match("-gby", "rrrr")).to eql(0)  
    end
  end

  # describe "#comparison" do
  #   it "should compare values and print the result" do
  #     allow(@code_comp).to receive(:puts).and_return(nil)
  #     allow(@gamedata).to receive(:gamedata).with
  #   end
  # end
end