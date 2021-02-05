class School
    attr_reader :roster

    def initialize name, roster = {}
        @name = name
        @roster = roster
    end

    def add_student name, age
        roster[age] ? roster[age].push(name) : roster[age] = [name]
    end

    def grade age
        roster[age]
    end

    def sort
        roster.each { |k,v| roster[k] = v.sort }
    end
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

pp school.sort