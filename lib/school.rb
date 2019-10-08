class School

    attr_reader :roster

    def initialize(school_name)
        @school = school_name 
        @roster = {}     
    end

    def add_student(student, grade)
        if @roster.has_key?(grade) == false
        @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.each do |grade, students|
            hash[grade] = students.sort
        end
        return hash
    end
end

