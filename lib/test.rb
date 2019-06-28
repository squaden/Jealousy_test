class Test
  attr_reader :result, :score

  def initialize(file_name1, file_name2)
    @score = 0
    @result = nil
    @current_question = 0
    @questions = File.readlines(file_name1, encoding: "UTF-8", chomp: true)
    @results = File.readlines(file_name2, encoding: "UTF-8", chomp: true)
  end

  def finished?
    @current_question >= @questions.size
  end

  def current_question
    @current_question += 1
    @questions[@current_question - 1]
  end

  def answer_accepted?(user_choice)
    if user_choice == 1
      @score += 2
    elsif user_choice == 2
      @score += 0
    elsif user_choice == 3
      @score += 1
    end
  end

  def counting
    if @score >= 30
      @result = @results[0]
    elsif @score >= 25
      @result = @results[1]
    elsif @score >= 19
      @result = @results[2]
    elsif @score >= 14
      @result = @results[3]
    elsif @score >= 9
      @result = @results[4]
    elsif @score >= 4
      @result = @results[5]
    else
      @result = @results[6]
    end
  end
end