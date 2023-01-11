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
    it 'should create rental for person' do
      person.add_rentals(Book.new('Evan', 'Sajeel'), '1/12/2023')
      expect(person.rentals.length).to eql(1)
    end
  end
end
