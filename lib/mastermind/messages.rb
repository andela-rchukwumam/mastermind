module Mastermind
  class Message
    def welcome_msg
      puts "Welcome to Master Mind!"
    end
    def request_msg
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    end
    def error_msg
      puts "Invalid input, please try again"
    end
    def quit_msg
      puts "You have quit the game"
    end
    def level_msg
      puts "Do you want the (b)eginner level, (m)edium level or (a)dvanced level?" 
    end
    def cheat_msg
      puts "Press (c)heat to display game cheat"
    end
    def beginner_msg
      puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, (y)ellow. Use (q)uit any time to end the game or (c)heat to print out the secret code. What is your guess?"
    end
    def medium_msg
      puts "I have generated a medium sequence with six elements made up of: (r)ed, (g)reen, (b)lue, (y)ellow, (c)yan. Use (q)uit any time to end the game or (c)heat to print out the secret code. What is your guess?"
    end
    def advanced_msg
      puts "I have generated a advanced sequence with eight elements made up of: (r)ed, (g)reen, (b)lue, (y)ellow, (c)yan, (m)agneta. Use (q)uit any time to end the game or (c)heat to print out the secret code. What is your guess?"
    end
    def instruction_msg
      puts <<-EOS 
      MasterMind game Instuction 
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
  end
end