#require "pry"

class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name 
        @@all << self
    end


    #binding.pry

    def self.all
        @@all
    end

    def add_boating_test(test_na, status, instructor_obj)
        new_test = BoatingTest.new(test_na, status, self, instructor_obj)
    end

    def all_instructors
        self.all_tests.map {|test| test.instructor}.uniq
    end

    def all_tests
        BoatingTest.all.select {|t| t.student == self}.uniq
    end
    
    def self.find_student(f_name)
        @@ll.find {|s| s.first_name == f_name}
    end

    def grade_percentage
        taken = self.all_tests.map {|test| test.status }
        #binding.pry
        passed = taken.select {|stat| stat == "passed"}
        grade_percent = (passed.length.to_f / taken.length.to_f) * 100
    end



end
