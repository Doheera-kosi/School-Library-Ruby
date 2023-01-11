require_relative '../classes/teacher'

describe Teacher do
  teacher = Teacher.new('Doctor', 36, 'Professor')
  describe 'Teacher Information' do
    it 'should have a type of Teacher' do
      expect(teacher.type).to eql('Teacher')
    end
    it 'should be able to use services' do
      expect(teacher.can_use_services?).to eql(true)
    end
  end
end
