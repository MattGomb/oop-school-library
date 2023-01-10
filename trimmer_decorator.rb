require_relative './base_decorator'

# sub-decorator to trim the names that are too long
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.length > 10 ? @nameable.correct_name[0..9] : @nameable.correct_name
  end
end
