class School  
    attr_accessor :student_name, :grade
    attr_reader :name, :roster
    def initialize(name)
        @name = name 
        @roster = {}
        @student_name 
        @grade
    end 
    def add_student(student_name, grade)
        @student_name 
        @grade
        if !@roster[grade]
            @roster[grade] = [] 
    end 
         @roster[grade] << student_name
    end 
     def grade(grade)
        @roster[grade]  
     end 
     def sort
           @roster.each do |grade, students|

                students.sort!
            
            end
    end
end 
school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)

school.roster

