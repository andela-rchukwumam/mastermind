module Mastermind
  class CodeGenerator
  # generates secret sequence based on user level choices.
  attr_reader :codecomp
      def initialize
      @message = Message.new
      @codecomp = CodeComp.new
    end

    def level_specs(level)
      levels = Hash.new ()
      levels[:advanced] = [8,6]
      levels[:beginner] = [4,4]
      levels[:medium] = [6,5]
      levels[level]
    end

    def user_status(choice)
      if choice == :advanced
        puts @message.advanced_msg
      elsif choice == :medium
        puts @message.medium_msg
      else
        puts @message.beginner_msg
      end
    end

    def code_generator(user_choice)
      secret = %w(r y g b c m)
      abc = level_specs(user_choice)
      character = abc[0]
      color = abc[1]
      computer_code = []

      until computer_code.length >= character
      i = Random.rand(0..color-1)
      computer_code << secret[i]
      end
      user_status(user_choice)

      @secret_code = computer_code.join
      @codecomp.guess_status(@secret_code)
    end 
  end
end