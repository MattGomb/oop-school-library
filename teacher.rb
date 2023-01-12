require_relative './person'

# teacher class derived from person
class Teacher < Person
  def initialize(age, specialization, name: 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
