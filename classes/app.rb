require_relative './book'
require_relative './classroom'
require_relative './person'
require_relative './rentals'
require_relative './student'
require_relative './teacher'
require 'date'

class App
  def initialize
    @rentals = []
    @books = []
    @people = []
  end

  def console_entry_point
    puts ''
    puts 'The Library of Books Welcome you!'
    until list_options
      input = gets.chomp
      if input == '7'
        puts 'Thanks for using The School Library App (^_^)!'
        break
      end
      option input
    end
  end

  def list_options
    puts('------------------------------')
    puts '1 - List All Books'
    puts '2 - List All People'
    puts '3 - Create a new Person'
    puts '4 - Create a new Book'
    puts '5 - Create a Rental'
    puts '6 - List All Rentals of Given Person ID'
    puts '7 - Quit/Exit'
    puts('------------------------------')
    print 'Enter number of operation: '
  end

  def option(input)
    case input
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rentals
    else
      'Enter any digit from 1 thru 7'
    end
  end

  def list_books
    if @books.length.zero?
      puts 'Not Single Book Even Available'
    else
      @books.each_with_index { |book, idx| puts "#{idx})  Book: #{book.title}, Author: #{book.author}" }
    end
    back_to_menu
  end

  def create_book
    print 'Enter Title for Book: '
    title = gets.chomp
    print 'Enter Author for Book: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Books Added Successfully!'
    back_to_menu
  end

  def create_person
    puts '1 - Create Student 2 - Create Teacher'
    select_option
    person = gets.chomp
    print 'Insert age: '
    age = gets.chomp
    print 'Insert name: '
    name = gets.chomp
    person_condition(person, age, name)
    puts 'Person Created Successfully!'
    back_to_menu
  end

  def create_condition(person, age, name)
    case person
    when '1'
      print 'Has parents permission [Y/N]: '
      permit = gets.chomp.downcase
      parent_permission = permit != 'n'
      @people.push(student.new(age, parent_permission, name))
    when '2'
      print 'Insert specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(specialization, age, name)
      @people.push(teacher)
    end
  end

  def list_people
    puts 'No person available' if @people.length.zero?
    @people.each { |person| puts "[#{person.type}] Name: #{person.name} Age: #{person.age}" }
    back_to_menu
  end

  def create_rental
    if @books.size.zero?
      puts 'No Books Available'
    elsif @people.size.zero?
      puts 'No Person Available'
    else
      puts 'Select a book from the following list by number'
      @books.each_with_index { |book, index| puts "#{index}) Book Title: #{book.title}, Book Author: #{book.author}" }
      rental_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      @people.each_with_index do |person, index|
        puts "#{index}) #{[person.type]} Name: #{person.name} Age: #{person.age} ID: #{person.id}"
      end
      rental_person = gets.chomp.to_i
      puts 'Enter date'
      date = convert_date(gets)
      rental_detail = Rental.new(@people[rental_person], @books[rental_book], date)
      @rentals.push(rental_detail)
      puts 'Rental Successfully Created!'
    end
    back_to_menu
  end

  def list_rentals
    puts 'Select id of any person'
    @person.each { |i| puts "[#{i.type.to_i}] id: #{i.id}, Person: #{i.name}" }
    print 'Person Id'
    person_id = gets.chomp
    @rentals.each do |i|
      puts "Date: #{i.date}, Book: '#{i.book.title}' by #{i.book.author}" if i.person.id.to_i == person_id.to_i
    end
  end

  def convert_date(str)
    Date.person(str)
  end

  def select_option
    puts ''
    print 'Select option'
    puts ''
  end

  def back_to_menu
    puts ''
    print 'Press Enter to go into menu'
    gets.chomp
    puts ''
  end
end