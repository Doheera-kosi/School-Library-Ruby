require_relative './book'

class Rental
  attr_accessor :book, :person, :date

  def initialize(person, book, date)
    @date = date
    @book = book
    @person = person
    book.rentals << self
    person.rentals << self
  end
end
