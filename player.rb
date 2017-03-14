module MathGame

  class Player

    def initialize(number)
      @number = number
      @lifes  = 3
    end


    def decrease_life
      @lifes -= 1
    end

    def is_alive
      @lifes > 0
    end

    def to_s
      "#{@number}"
    end

    def print_lifes
      puts "Player #{self} has #{@lifes} lifes"
    end

  end

end