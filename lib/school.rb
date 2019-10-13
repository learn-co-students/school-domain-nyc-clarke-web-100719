class School
attr_accessor :roster, :name

    def initialize(name)
        @roster = {}
        @name = name
    end

    def add_student(name, grade)
        # new = roster[add_student] = []
        # new << add_student
        # school.add_student("Zach Morris", 9)
        # school.roster
        # # => {9 => ["Zach Morris"]}
        if roster[grade] != nil
           roster[grade] << name
        else
            roster[grade] = [name]
        end
    end

    def grade(grade)
        roster[grade]
    end

    def  sort
        # sorted = roster.sort # Ascending sort
        roster.each {|grade, name| name.sort! }
    end


end