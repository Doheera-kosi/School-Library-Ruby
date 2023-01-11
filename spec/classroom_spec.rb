require '../classes/classroom'

describe Classroom do
  classroom = Classroom.new('Science')
  describe 'Classroom Information' do
    it 'should have a label of Science' do
      expect(classroom.label).to eql('Science')
    end
  end
end
