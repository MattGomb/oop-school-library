require_relative './book'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'

#class to have basic UI
class App
  def list_books
    if Book.all.empty?
      puts 'There are no books in the database yet!'
    else
      Book.all.each do |book|
        puts 'Title: #{book.title}, Author: #{book.author}'
      end
    end
  end

  def list_people
    if Student.all.empty? && Teacher.all.empty?
      puts 'There are no people in the database yet!'
    else
      Student.all.each do |student|
        puts '[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}'
      end
      Teacher.all.each do |teacher|
        puts '[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}'
      end
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a Teacher (2)? [Input the number]: '
    select = gets.chomp.to_i
    if[1, 2].include?(select)
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      case select
      when 1 
        print 'Classroom: '
        classroom = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        unless permission == 'Y' || 'N' || 'y' || 'n'
          puts 'Invalid input, please write Y or N'
          print 'Has parent permission? [Y/N]: '
          permission = gets.chomp
        end
        Student.new(age, classroom, name: name, parent_permission: permission)
        puts 'Student added successfully!'
      when 2
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name: name)
        puts 'Teacher added successfully!'
      end
    else
      puts 'Invalid option'
      return
    end
  end

  def create_book
  end

  def create_rental
  end

  def list_rentals
  end
end
 