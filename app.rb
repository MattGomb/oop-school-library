#class to have basic UI
class App
  # list all books
  # List all people.
  # Create a person (teacher or student, not a plain Person).
  # Create a book.
  # Create a rental.
  # List all rentals for a given person id.
  def app
    puts 'Welcome to the School Library App!'
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    input = gets.chomp
    case input
    when '1'
      puts 'List of books'
    when '2'
      puts 'List of people'
    when '3'
      puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
      print input 
      if input == '1'
        puts 'Age:'
        print input
        puts 'Name:'
        print input
        puts 'Has parent permission? [Y/N]:'
        print input
          unless input == 'Y' || 'N' || 'y' || 'n'
            puts 'Invalid input: please enter Y or N'
        puts 'Student created successfully'
      elsif input == '2'
        puts 'Age:'
        print input
        puts 'Name:'
        print input
        puts 'Specialization:'
        print input
        puts 'Teacher created successfully'
      else
        puts 'Invalid input: please enter 1 or 2'
      end
    when '4'
      puts 'Title: '
      print input
      puts 'Author: '
      print input
      puts 'Book created successfully'
    when '5'
      puts 'Select a book from the following list by number'
    when '6'
      puts 'List all rentals for a given person id'
    when '7'
      puts 'Exit'
    else
      puts 'Invalid option'
    end
  end

  app()
end
 