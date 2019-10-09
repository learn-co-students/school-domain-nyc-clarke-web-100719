
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade].nil?
      @roster[student_grade] = []
    end

    @roster[student_grade] << student_name
  end

  def grade(num)
    return @roster[num]
  end

  def sort
    # @roster.each {|key, value| value.sort}
    @roster.each do |key, value|
     @roster[key] = value.sort
    end
  end
end
