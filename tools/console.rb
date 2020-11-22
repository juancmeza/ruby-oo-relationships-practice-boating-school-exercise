require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
yo = Student.new("Juan")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1 = BoatingTest.new("Intro", "passed", spongebob, puff)
test2= BoatingTest.new("Coding Challenge", "passed", yo, puff)


no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)

puff.pass_student(spongebob, "Don't Crash 101")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

#puff.tests.find {|t| t.student == spongebob && t.test_name == "Don't Crash 101"}