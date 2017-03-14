module MathGame

  class Question

    attr_reader :numbers, :answer

    def initialize
      @numbers = get_random_numbers(20)
      @answer = @numbers[0] + @numbers[1]
    end

    def get_random_numbers(max)
      [rand(max), rand(max)]
    end

    def to_s
      "What does #{numbers[0]} + #{numbers[1]} equal?"
    end

  end

end