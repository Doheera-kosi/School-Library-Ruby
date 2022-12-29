require_relative './person'
require_relative './book'

class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(person, book, date)
    @person = person
    person.rentals.push(self)

    @book = book
    book.rentals.push(self)

    @date = date
  end
end
