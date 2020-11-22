require "pry"
class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end
    

    #binding.pry

    def self.all
        @@all
    end

    def tests
        BoatingTest.all.select {|t| t.instructor == self}.uniq
    end
 
    def passed_students
        self.tests.map {|t| t.student}.uniq
    end

    def pass_student(stud, test_str)
        b_test = self.tests.find {|t| t.student == stud && t.test_name == test_str }
        #binding.pry
        if b_test
            b_test.status = "passed"  
        else
            b_test = BoatingTest.new(test_str, "passed", stud, self)
        end
        b_test
    end

    def all_students
        self.tests.map {|t| t.student}
    end
    

end
