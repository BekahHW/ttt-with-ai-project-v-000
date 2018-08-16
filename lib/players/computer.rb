require "pry"
module Players
  class Computer < Player

 def move(board)
      # puts "Where would you like to move?"
      # input = gets.strip.to_i
      # @board.valid_move?(input)
      # binding.pry
      
      
      binding.pry
      if !board.taken?("5")
        # fix return values
        # board.cells[4] = self.token
        # board.cells[4] 
        # implicit return value
          "5"
      elsif( !board.taken?('1') ||!board.taken?('3') || !board.taken?('7') || !board.taken?('9'))
        corners = ["1", "3", "7", "9"]
        # selection = corners.sample until !board.taken?(selection) 
        corners.each do |input|  
          selection = corners.sample 
          if !board.taken?(selection)    
            return selection
            end
        end    
        binding.pry
       
        # board.cells[selection] = self.token
        # binding.pry
        # board.cells[selection] 
        # a way to select when the corners and center aren't available
        
      else
      end
    end


  end
end