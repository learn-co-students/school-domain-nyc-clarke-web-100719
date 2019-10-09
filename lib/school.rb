class School
    def initialize(name)
        @name = name
        @roster = Hash.new {|k,v| k[v] = []}
    end

    def roster
        @roster
    end

    def add_student(name, number)
        @roster[number] << name
    end

    def grade(grad_level)
        @roster[grad_level]
    end

    def sort
        hash = Hash.new {|k,v| k[v] = []}
     @roster.each do |k,v| 
        hash[k] = v.sort
     end
    hash
    end
end


first_school = School.new("Bayside High School")

