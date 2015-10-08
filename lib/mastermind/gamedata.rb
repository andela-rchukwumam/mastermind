module Mastermind
  class GameData
    def initialize
      @message = Message.new
    end
    def game_data(start_time)
      # saves the game info to a file
      #all the method does is to pick the game data and store it in a file
      puts @message.save_msg
      @input = gets.chomp
      if @input[0].downcase == "y"
        puts @message.name_msg
        name_input = gets.chomp
        File.open("users.txt", "a+") do |file|
          puts @message.data_msg(name_input, start_time)
          file.puts "#{name_input} completed the game in #{(Time.now - start_time).to_i} seconds"
        end
        record
      end  
    end
    def record
      puts @message.rank_msg
        @rank_input = gets.chomp
        if @rank_input[0].downcase == "y"
          File.open("users.txt", "r+") do |file|
            file.each_line {|line|  puts line}
          end
        end
    end
  end
end 