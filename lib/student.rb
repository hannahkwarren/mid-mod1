class Student

  attr_reader :name, :age, :scores

  def initialize(name:, age:)
    @name = name
    @age = age
    @scores = []
  end

  def log_score(score)
    @scores << score
  end


  def grade
    (@scores.sum.to_f / @scores.length.to_f).round(2)
  end
end
