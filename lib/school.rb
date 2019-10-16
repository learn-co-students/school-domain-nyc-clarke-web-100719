class School

attr_reader :roster, :school_name

    def initialize(school_name)
        @roster = {}
        @school_name = school_name
    end

    def add_student (name, grade)
        if @roster[grade] != nil
        @roster[grade] << name
        else
        @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster_sorted = {}
        @roster.each do |grade, names|
            roster_sorted[grade] = names.sort
        end
        roster_sorted
    end
end