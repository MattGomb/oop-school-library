require_relative './app'
# class to have an entry point to the app
class Interface
  puts 'Welcome to the School Library App'
  def Interface
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end
end

# class to take the functionality of the menu
class Main
  def initialize
    @app = App.new
    @Interface = Interface.new
  end
 
end

main()
