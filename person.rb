require_relative './nameable'

# main class Person
class Person < Nameable
  attr_reader :id

  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    case of_age? || @parent_permission
    when true
      true
    when false
      false
    end
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  private :of_age?
end
