require './decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()

    @id = Random.rand(1...1999)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name = name
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age?
  end

  private :of_age?
end
