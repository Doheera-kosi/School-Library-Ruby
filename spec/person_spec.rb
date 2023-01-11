require_relative '../classes/person'

describe Person do
  person = Person.new(28, true, 'Sajeel')
  describe 'Person Information' do
    it 'should have a correct name of Sajeel' do
      expect(person.correct_name).to eql('Sajeel')
    end
    it 'should have an age of 28' do
      expect(person.age).to eql(28)
    end
    it 'should be able to use services' do
      expect(person.can_use_services?).to eql(true)
    end
  end
end
