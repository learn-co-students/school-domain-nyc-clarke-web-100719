class School

    attr_accessor :roster 

  def initialize(name)
    @name = name
    @roster = {}
  end 

  def name= (name)
    @name = name
  end 

    def name
        @name 
    end 
        

    def add_student(name, grade)
        if !@roster[grade]
         @roster[grade] = [name]
        else
        @roster[grade] << name
        end

    end 

    def grade(number)
        @roster[number]
    end 

    def sort
        @roster.each do |grade, students| 
            @roster[grade] = students.sort  
        end
    end

    

end 