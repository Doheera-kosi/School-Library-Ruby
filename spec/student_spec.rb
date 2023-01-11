require '../classes/student'

describe Student do
  student = Student.new(24, true, 'Evan')
  describe 'Student Information' do
    it 'should have a type of Student' do
      expect(student.type).to eql('Student')
    end
    it "should have a shape of '¯(ツ)/¯'" do
      expect(student.play_hookey).to eql('¯\(ツ)/¯')
    end
  end
end
