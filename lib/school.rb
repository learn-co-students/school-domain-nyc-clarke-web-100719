class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]    
            @roster[grade] << "#{name}"
        else 
            @roster[grade] = ["#{name}"]
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |key, values|
            @roster[key] = values.sort
        end
    end
    
end

