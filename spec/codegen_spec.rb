require_relative 'spec_helper'

#######################################################
describe Mastermind::CodeGenerator do
  before :each do
    @code_generator = Mastermind::CodeGenerator.new
  end

  describe "#new" do
    it "returns a new CodeGenerator object" do
      expect(@code_generator).to be_a Mastermind::CodeGenerator
    end
  end

  describe "#code_generator" do
    it "should throw an error when called without argument" do
      expect{@code_generator.code_generator}.to raise_error(ArgumentError)
    end
    it "should generate computer code" do
      allow(@code_generator).to receive(:user_status).and_return("good")
      allow(@code_generator).to receive(:level_specs).and_return([6,5])
      allow(@code_generator.codecomp).to receive(:guess_status).and_return("generated")
      expect(@code_generator.code_generator([6,5])).to eql("generated")
    end
  end

  describe "#user_status" do
    it "should throw an error when called without argument" do
      expect{@code_generator.user_status}.to raise_error(ArgumentError)
    end
    it "should print out the respective messages when called" do
      allow(@code_generator).to receive(:puts).and_return("String")
      expect(@code_generator.user_status(:advanced)).to be_a String
    end
    it "should print out the respective messages when called" do
      allow(@code_generator).to receive(:puts).and_return("String")
      expect(@code_generator.user_status(:medium)).to be_a String
    end
    it "should print out the respective messages when called" do
      allow(@code_generator).to receive(:puts).and_return("String")
      expect(@code_generator.user_status(:beginner)).to be_a String
    end
  end

  describe"#level_specs" do
    it "should throw error if called without an argument" do
      expect{@code_generator.level_specs}.to raise_error(ArgumentError)
    end
    it "should return a Hash" do
      expect(@code_generator.level_specs(:advanced)).to be_an Array
    end
    it "should return the advanced level according to user choice" do
      expect(@code_generator.level_specs(:advanced)).to eql [8,6]
    end
    it "should return the beginner level according to user choice" do
      expect(@code_generator.level_specs(:beginner)).to eql [4,4]
    end
    it "should return the medium level according to user choice" do
      expect(@code_generator.level_specs(:medium)).to eql [6,5]
    end
  end
end
########################################################