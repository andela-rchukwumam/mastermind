require "colorize"
module Mastermind
  class Message

    def initialize
      @red = "(r)ed".colorize(:color =>:red)
      @green = "(g)reen".colorize(:color =>:green)
      @blue = "(b)lue".colorize(:color =>:blue)
      @yellow = "(y)ellow".colorize(:color =>:yellow)
      @cyan = "(c)yan".colorize(:color =>:cyan)
      @magenta ="(m)agenta".colorize(:color => :magenta)
    end
    def welcome_msg
      <<-EOS 
              *************************************
              *       WELCOME TO MASTERMIND!      *
              *                                   *
              ************************************* 
      EOS
    end

    def request_msg
      <<-EOS 
              *************************************
              * Would you like to (p)lay, read the*
              * (i)nstructions, or (q)uit?        *
              ************************************* 
      EOS
    end

    def error_msg
      <<-EOS 
              *************************************
              *"You have exceeded your number of  *
              *            entries"               *
              ************************************* 
      EOS
    end

    def quit_msg
      <<-EOS
              *************************************
              *      You have quit the game!      *
              *                                   *
              ************************************* 
      EOS
    end

    def level_msg
      <<-EOS
              *************************************
              * Do you want the (b)eginner level, *
              *(m)edium level or (a)dvanced level?*
              ************************************* 
      EOS
    end

    def beginner_msg
            <<-EOS
              *****************************************
              * I have generated a beginner sequence  *
              * with four elements made up of: #{@red}* 
              * #{@yellow}, #{@green} and #{@blue}.Use *
              * (q)uit at any time to end the game    *
              *          What is your guess?          *
              ***************************************** 
      EOS
    end

    def medium_msg
            <<-EOS
              *****************************************
              *   I have generated a medium sequence  *
              *  with six elements made up of: #{@red}, * 
              * #{@yellow}, #{@green}, #{@blue} #{@yellow},*
              * #{@cyan}. Use (q)uit at any time   *
              * to end the game.  What is your guess? *
              ***************************************** 
      EOS
    end

    def advanced_msg
            <<-EOS
              *****************************************
              * I have generated an advanced sequence *
              * with eight elements made up of: #{@red}, * 
              * #{@yellow}, #{@green}, #{@blue} #{@yellow},*
              * #{@cyan}, #{@magenta}.Use (q)uit at any time to  *
              *   end the game. What is  your guess?  *
              ***************************************** 
      EOS
    end

    def instruction_msg
              <<-EOS 
              MasterMind game Instruction 
              When you click play, you are asked to choose a level to play.
              Depending on the your choice, I have selected a secret combination of colored pegs:
              Guess that combination in 12 or fewer tries to win.
              How to Play
              In the Beginner Level, for each of my four positions I have chosen from four possible colors:
              In the Medium Level, for each of my six positions I have chosen from five possible colors:
              In the Beginner Level, for each of my eight positions I have chosen from six possible colors:
              I can use a color more than once, so the combination could contain anything from different colors to the same color: 
              example 1: rrgb
              example 2: rcgby
              example 3: mcrrybgg 
              Each time you submit a guess I will let you know how close that guess is: 
              Press (q) to quit or (p) to play 
              EOS
    end

    def long_entry
      <<-EOS
              *************************************
              *  Invalid Entry, guess is too long *
              ************************************* 

      EOS
    end

    def short_entry
      <<-EOS
              *************************************
              *  Invalid Entry, guess is too short*
              ************************************* 
      EOS
    end

    def guess_msg(guess_count)
      <<-EOS
              *************************************
              *    You have taken #{guess_count + 1} guess(es)       *
              *    out of 12 guesses.             *
              ************************************* 

      EOS
    end

    def name_msg
      <<-EOS
              *************************************
              *         What is your name?        *
              ************************************* 
      EOS
    end

    def data_msg(name_input, start_time, guess_count)
      <<-EOS
              *************************************
              *#{name_input} completed the game after #{guess_count + 1} rounds in #{(Time.now - start_time).to_i} seconds*
              ************************************* 
      EOS
    end

    def rank_msg
      <<-EOS
              *************************************
              * Do you want to see your rank? Y/N?*
              ************************************* 
      EOS
    end

    def save_msg
      <<-EOS
              *************************************
              * Do you want to save to file? Y/N? *
              ************************************* 
      EOS
    end
    def won_msg(start_time)
      <<-EOS
              *************************************
              *Congratulations! It took you #{(Time.now - start_time).to_i} *
              *seconds to complete this game      *
              ************************************* 
      EOS
    end

    def match_msg(exact_status, partial_status)
      <<-EOS
              *************************************
              *You have #{exact_status} exact matches     *
              *and #{partial_status} partial matches        *
              *             Try Again!            *
              ************************************* 
      EOS
    end
  end
end