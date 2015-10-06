################################################
# Mastermind game
# Created by: Chukwumam Ruth
# First Checkpoint
################################################

require_relative "mastermind/version"
require 'time'
require_relative 'mastermind/messages'
require_relative 'mastermind/codegen'

module Mastermind
   class GameEngine 
    #this class handles all the main work in the game.
    def self.start
      @message= Message.new
      puts @message.welcome_msg
      puts @message.request_msg
      self.user_input
    end

    def self.user_input
      loop do
        @input = gets.chomp
        if @input[0].downcase == "q"
          puts Message.new.quit_msg
          break
        end
        if @input[0].downcase == "p"
          self.play
          break
        elsif @input[0].downcase == "i"
          puts Message.new.instruction_msg
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
      puts Message.new.level_msg
      level_input = gets.chomp
      game_input = game_level(level_input)
      CodeGenerator.new.code_generator(game_input)
    end

    def game_data(start_time)
      # saves the game info to a file
      #all the method does is to pick the game data and store it in a file
      puts Message.new.save_msg
      input = gets.chomp
      if input[0].downcase == "y"
        puts Message.new.name_msg
        name_input = gets.chomp
        File.open("users.txt", "a+") do |file|
          puts Message.new.data_msg(name_input, start_time)
          file.puts "#{name_input} completed the game in #{(Time.now - start_time).to_i} seconds"
        end
        record
      end  
    end
    def record
      puts Message.new.rank_msg
        rank_input = gets.chomp
        if rank_input[0].downcase == "y"
          File.open("users.txt", "r+") do |file|
            file.each_line {|line|  puts line}
          end
        end
    end
  end
end
