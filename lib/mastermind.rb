################################################
# Mastermind game
# Created by: Chukwumam Ruth
# First Checkpoint
################################################

require_relative "mastermind/version"
require 'time'
require_relative 'mastermind/messages'
require_relative 'mastermind/codegen'
require_relative 'mastermind/codecomp'
require_relative 'mastermind/gamedata'

module Mastermind
  class GameEngine 
    #this class handles all the main work in the game.
    attr_accessor :message, :codegen
    def initialize
      @message = Message.new
      @codegen = CodeGenerator.new
    end

    def start
      puts @message.welcome_msg
      puts @message.request_msg
      user_input
    end

    def user_input(isTest = false)
      loop do
        @input = gets.chomp
        if @input[0].downcase == "q"
          puts @message.quit_msg
          break
        end
        if @input[0].downcase == "p"
          self.play
          break
        else @input[0].downcase == "i"
          puts @message.instruction_msg
          break if isTest
        end
      end
    end

    def game_level(user_level)
      levels = Hash.new (:beginner)
      levels["a"] = :advanced
      levels["b"] = :beginner
      levels["m"] = :medium
      levels[user_level]
    end

    def play
      puts @message.level_msg
      level_input = gets.chomp
      game_input = game_level(level_input)
      @codegen.code_generator(game_input)
    end
  end
end
