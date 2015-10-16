module Mastermind
  class GameData
    def initialize
      @message = Message.new
    end
    def game_data(start_time, guess_count, filename)
      puts @message.save_msg
      input = gets.chomp
      if input[0].downcase == "y"
        puts @message.name_msg
        name_input = gets.chomp
        File.open(filename, "a+") do |file|
          puts @message.data_msg(name_input, start_time, guess_count)
          file.puts "#{name_input} completed the game after #{guess_count + 1} rounds in #{(Time.now - start_time).to_i} seconds"
        end
        record(filename)
      end  
    end

    def record(filename = "users.txt")
      puts @message.rank_msg
        @rank_input = gets.chomp
        if @rank_input[0].downcase == "y"
          top_ten = []
          File.open(filename, "r+") do | lines |
            lines.each_line do |text|
            top_ten << text
            @leader = top_ten.sort_by { |line| line[/\d+ rounds/].to_i &&  line[/\d+ seconds/].to_i}
            end
          end
          puts "#{@leader.first(10).join.to_s}" #.each {|line|  puts line.first(10)}
        end
        puts @message.request_msg
        GameEngine.new.user_input
    end
  end
end 