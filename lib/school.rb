# code here!
require 'pry'
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] =[student_name] 
        else
            @roster[grade] << student_name  
        end
    end

    def grade(n_grade)
    @roster[n_grade]
    end

    def sort
    @roster.each{
    |grade, students|
    @roster[grade] = students.sort;   
    }
    @roster
    end
end
