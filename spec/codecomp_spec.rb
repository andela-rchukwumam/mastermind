require_relative 'spec_helper'

#######################################################
describe Mastermind::CodeComp do
  before :each do
    @code_comp = Mastermind::CodeComp.new
    @gamedata = Mastermind::GameData.new
  end

  describe "#new" do
    it "returns a new CodeComp object" do
      expect(@code_comp).to be_a Mastermind::CodeComp
    end
  end

  describe "#guess_status" do
    it "should throw an error when called without argument" do
      allow(@code_comp).to receive(:puts).and_return(nil)
      expect{@code_comp.guess_status}.to raise_error(ArgumentError)
    end
    it "should exit when user presses quit" do
      allow(@code_comp).to receive(:gets).and_return("q")
      allow(@code_comp).to receive(:puts).and_return(nil)
      expect{@code_comp.guess_status("rrrr")}.to raise_error(SystemExit)
    end
    it "should compare the entries" do
      allow(@code_comp).to receive(:gets).and_return("rrrr")
      allow(@code_comp).to receive(:comp_comparison).and_return(nil)
      expect(@code_comp.guess_status("rrrr")).to be nil
    end
  end

  describe "#exact_match" do
    it "should return the exact_match" do
      expect(@code_comp.exact_match("rgby", "rrrr")).to eql([1, "-gby"])  
    end
  end

  describe "#partial_match" do
    it "should return the partial_match" do
      expect(@code_comp.partial_match("-gby", "rbrr")).to eql(1)  
    end
  end

  describe "#comparison" do
    it "should compare values and print won message" do
      allow(@code_comp).to receive(:puts).and_return(nil)
      allow(@code_comp).to receive(:gets).and_return(nil)
      allow(@code_comp.gamedata).to receive(:game_data).and_return("equal")
      expect(@code_comp.comparison("rrrr","rrrr", Time.now, 3)).to eql("equal")
    end

    it "should compare values and print error message" do
      @code_comp.guess_count = 13
      allow(@code_comp).to receive(:puts).and_return("not equal")
      expect(@code_comp.comparison("rgrr","rrrr", Time.now, 3)).to eql("not equal")
    end
  end

  describe "#comp_comparison" do
    it "should be equal to user entry" do
      allow(@code_comp).to receive(:puts).and_return("nil")
      allow(@code_comp).to receive(:comparison).and_return("equal")
      expect(@code_comp.comp_comparison("rrrr","rrgb", Time.now, 3)).to eql("equal")
    end

    it "should be shorter than user entry" do
      allow(@code_comp).to receive(:puts).and_return("shorter")
      expect(@code_comp.comp_comparison("rrrrrr","rrgb", Time.now, 3)).to eql("shorter")
    end

    it "should be longer than user entry" do
      allow(@code_comp).to receive(:puts).and_return("longer")
      expect(@code_comp.comp_comparison("rrrrrr","rrgb", Time.now, 3)).to eql("longer")
    end
  end
end