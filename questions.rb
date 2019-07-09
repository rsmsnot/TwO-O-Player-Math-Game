class Question
    attr_accessor :answer, :num1, :num2, :print

    def initialize
        @num1 = rand(1...20)
        @num2 = rand(1...20)
        @answer = @num1 + @num2

        @print= "What is #{num1} + #{num2}?"
    end
end