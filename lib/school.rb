# code here!

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    attr_accessor :roster
    attr_reader :school_name
    
    def add_student(student_name, grade)
        @roster[grade] = [] unless @roster[grade]
        @roster[grade] << student_name
    end
    
    def grade(grade)
        @roster[grade]
    end 
    
    def sort
        @roster.reduce({}) do |sorted_roster, (grade, student_list)|
            sorted_roster[grade] = student_list.sort
            sorted_roster
        end
    end
end

school = School.new("Bayside High School")