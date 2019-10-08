class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade_level)
        if @roster[grade_level]
            @roster[grade_level] << student_name
        else
            @roster[grade_level] = []
            @roster[grade_level] << student_name
        end
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster.map{ |key, value|
            @roster[key] = value.sort
        }
        @roster
    end


end

