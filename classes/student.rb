require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    @type = 'Student'.delete_prefix('"').delete_suffix('"')
    super(age, name, parent_permission)
  end

  attr_accessor :type

  def play_hookey
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.student.include?(self)
  end
end
