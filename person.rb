require './decorator'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1...1999)
    @name = name
    @age = age
    @parent_permission = parent_permission

    super()
  end

  def correct_name
    @name = name
  end

  attr_reader :id
  attr_accessor :name, :age

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age?
  end

  private :of_age?
end
