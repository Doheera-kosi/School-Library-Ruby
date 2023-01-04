require './rentals'

class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author, :rentals

  def add_rentals=(person, date)
    Rental.new(self, person, date)
  end
end
