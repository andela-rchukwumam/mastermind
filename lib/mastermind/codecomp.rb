module Mastermind
  class CodeComp
    def initialize
      @message = Message.new
      @gamedata = GameData.new
    end
    
    def guess_status(computercode)
      start_time = Time.now
      puts computercode
      guess_count = 0
      user_entry = 0
      while guess_count < 12 && user_entry != computercode
        user_entry = gets.chomp.downcase
        comp_comparison(user_entry, computercode, start_time, guess_count)
        guess_count += 1
        if guess_count >= 12
          puts @message.error_msg
        end
      end 
    end

    def exact_match(computercode, user_entry)
       exact = 0
       cc = computercode.dup
       cc.split("").each_with_index do |element, index|
         if user_entry[index] == element
           cc[index] = "-"
           user_entry[index] = "-"
           exact += 1
         end
       end
       [exact, cc]
     end

   def partial_match(computercode, user_entry)
      partial = 0
      computercode.split("").each do | element |
        if  element != "-"
          if user_entry.include? element
            user_entry.sub!(element, '-')
            partial += 1
          end
        end
      end
      partial
   end

    def comparison(computercode, user_entry, start_time)
      if computercode == user_entry
        puts @message.won_msg(start_time)
        @gamedata.game_data(start_time)
      else
        exact_status = exact_match(computercode, user_entry)
        cc = exact_status[1]
        exact_status = exact_status[0]
        partial_status = partial_match(cc, user_entry)
        puts @message.match_msg(exact_status, partial_status)
      end
    end

    def comp_comparison(user_entry, computercode, start_time, guess_count)
      if user_entry.length == computercode.length
          puts @message.guess_msg(guess_count)
          comparison(computercode, user_entry, start_time)
        elsif user_entry.length > computercode.length
          puts @message.long_entry
          puts @message.guess_msg(guess_count)
        else
          puts @message.short_entry
          puts @message.guess_msg(guess_count)
      end
    end
  end
end 