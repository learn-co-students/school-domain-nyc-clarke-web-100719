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
        sorted = {}
        @roster.each do |key, values|
            sorted[key] = values.sort
        end
        sorted
    end
    
end

