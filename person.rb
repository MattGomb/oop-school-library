require_relative './nameable'

# main class Person
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
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
  
  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end
  
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
