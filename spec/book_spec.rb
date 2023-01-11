require_relative '../classes/book'
require_relative '../classes/rentals'
require_relative '../classes/student'

describe Book do
  book = Book.new('Evan', 'Sajeel')
  describe 'Accessing book' do
    it 'output rentals' do
      expect(book.rentals).to eql([])
    end
    it 'output book title' do
      expect(book.title).to eql('Evan')
    end
    it 'output book author' do
      expect(book.author).to eql('Sajeel')
    end
    it 'is an instance of Book' do
      expect(book).to be_an_instance_of(Book)
    end
    it 'adding one rental to book should have length of one' do
      book.add_rentals(Student.new(20, true, 'Felix Ouma'), '2022/08/30')
      expect(book.rentals.length).to eq(1)
    end
  end
end
