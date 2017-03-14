module MathGame

  class Player

    def initialize(number)
      @number = number
      @lives  = 3
    end


    def decrease_life
      @lives -= 1
    end

    def is_alive
      @lives > 0
    end

    def to_s
      "Player #{@number}"
    end

    def print_lives
      if @lives > 1
        puts "#{self} has #{@lives} lives"
      else
        puts "#{self} has #{@lives} life"
      end
    end

  end

end