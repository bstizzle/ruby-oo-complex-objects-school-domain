
# code here!
class School
    def initialize(name, roster={})
        @name = name 
        @roster = roster
    end 

    attr_accessor :name, :roster

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end 

    def grade(year)
        @roster[year]
    end 

    def sort 
        @roster.each do |grade, students|
            students.sort!
        end 
    end 

end 
