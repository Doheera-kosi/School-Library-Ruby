require_relative '../classes/rentals'
require_relative '../classes/student'

describe Rental do
  before :all do
    @book = Book.new('New Book', 'Sajeel')
    @student = Student.new(24, true, 'Evan')
    @rental = Rental.new(@student, @book, '01/11/2023')
  end

  context 'Rental test on student' do
    it 'Shoud have a rental date 01/11/2023' do
      date = @rental.date
      expect(date).to eql '01/11/2023'
    end

    it 'Shoud have person "Evan" renting out the book' do
      name = @rental.person.name
      expect(name).to eql 'Evan'
    end

    it 'Should have book title of New Book' do
      title = @rental.book.title
      expect(title).to eql 'New Book'
    end
  end
end
