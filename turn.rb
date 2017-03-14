module MathGame

  class Turn

    attr_reader :answer, :question

    def initialize
      @answer = ''
      @question = Question.new
    end

    def get_answer
      puts 'insert you answer: '
      @answer = gets.chomp.to_i
    end

    def evaluate_answer
      puts question.answer
      @answer == question.answer
    end

  end

end