require_relative "mastermind/version"
require 'time'
require_relative 'mastermind/messages'
require_relative 'mastermind/codegen'

module Mastermind
   class GameEngine 
    #this class handles all the main work in the game.
    def self.start 
      Message.new.welcome_msg
      Message.new.request_msg
      self.user_input
    end

    def self.user_input
      loop do
        input = gets.chomp
        if input[0].downcase == "q"
          Message.new.quit_msg
          break
        end
        if input[0].downcase == "p"
          self.play
          break
        elsif input[0].downcase == "i"
          Message.new.instruction_msg
        end
      end
    end

    def self.game_level(user_level)
      levels = Hash.new (:beginner)
      levels["a"] = :advanced
      levels["b"] = :beginner
      levels["m"] = :medium
      levels[user_level]
    end

    def self.play
      Message.new.level_msg
      level_input = gets.chomp
      game_input = game_level(level_input)
      CodeGenerator.new.code_generator(game_input)
    end
  end
end
 Mastermind::GameEngine.start