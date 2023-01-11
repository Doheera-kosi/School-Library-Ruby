require '../classes/book.rb'

describe Book do
    describe "Accessing book" do
        book = Book.new("Evan", "Sajeel")
        it "output rentals" do
            expect(book.rentals).to eql([])
        end
        it "output book title" do
            expect(book.title).to eql("Evan")
        end
        it "output book author" do
            expect(book.author).to eql("Sajeel")
        end
    end
end