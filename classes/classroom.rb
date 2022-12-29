class Classroom
  def initialize(label)
    @students = []
    @label = label
  end

  attr_reader :students
  attr_accessor :label

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
