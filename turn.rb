module MathGame

  class Turn

    attr_reader :answer, :question

    def initialize
      @answer = ''
      @question = Question.new
    end

    def get_answer
      print 'Your answer: '
      @answer = gets.chomp.to_i
    end

    def evaluate_answer
      @answer == question.answer
    end

  end

end