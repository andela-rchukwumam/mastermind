module Mastermind
  class GameData
    def initialize
      @message = Message.new
    end

    def input
      @input = gets.chomp
    end

    def name_input
      @name_input = gets.chomp
    end

    def game_data(start_time, guess_count)
      puts @message.save_msg
      input
      if input[0].downcase == "y"
        puts @message.name_msg
        name_input
        File.open("users.txt", "a+") do |file|
          puts @message.data_msg(name_input, start_time, guess_count)
          file.puts "#{name_input} completed the game after #{guess_count + 1} rounds in #{(Time.now - start_time).to_i} seconds"
        end
        record
      end  
    end
    def record
      puts @message.rank_msg
        @rank_input = gets.chomp
        if @rank_input[0].downcase == "y"
          top_ten = []
          File.open("users.txt", "r") do | lines |
            lines.each_line do |text|
            top_ten << text
            @leader = top_ten.sort_by { |line| line[/\d+ rounds/].to_i &&  line[/\d+ seconds/].to_i}
            end
          end
          puts "#{@leader.first(10).join.to_s}" #.each {|line|  puts line.first(10)}
        end
    end
  end
end 