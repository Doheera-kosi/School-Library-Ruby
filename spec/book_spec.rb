require_relative '../classes/book'
require_relative '../classes/rentals'

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
  end
end
