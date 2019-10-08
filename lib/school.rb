# code here!

class School




    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_reader :name

    def roster
        @roster
    end




    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student
        else   
            @roster[grade] = Array.new
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.each{ |k,v|
    
            hash[k] = v.sort

        }
        hash
    end



end
