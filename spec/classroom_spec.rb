require_relative '../classes/classroom'
require_relative '../classes/student'

describe Classroom do
  classroom = Classroom.new('Science')
  describe 'Classroom Information' do
    it 'should have a label of Science' do
      expect(classroom.label).to eql('Science')
    end
    it 'student should be added to class' do
        classroom.add_student(Student.new(14, false, 'John'))
        expect(classroom.students.length).to eq(1)
    end
  end
end