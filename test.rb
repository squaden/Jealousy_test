class Test
  def initialize(file_name1, file_name2)
    @score = 0
    @result = nil
    @questions = File.readlines(file_name1, chomp: true)
    @results = File.readlines(file_name2, chomp: true)
  end

  def next_questioins(inputoutput)
    for item in @questions do
      inputoutput.output_questions(item)
      inputoutput.user_input
      if inputoutput.choice == 1
        @score += 2
      elsif inputoutput.choice == 3
        @score += 1
      end
    end
  end

  def counting
    if (@score >= 30)
      @result = @results[0]
    elsif (@score >= 25)
      @result = @results[1]
    elsif (@score >= 19)
      @result = @results[2]
    elsif (@score >= 14)
      @result = @results[3]
    elsif (@score >= 9)
      @result = @results[4]
    elsif (@score >= 4)
      @result = @results[5]
    else
      @result = @results[6]
    end
  end

  def result
    @result
  end

  def name
    @name
  end

  def score
    @score
  end
end