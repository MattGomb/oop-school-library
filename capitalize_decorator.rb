require_relative './base_decorator'

# sub-decorator to capitalize the letters of names
class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
