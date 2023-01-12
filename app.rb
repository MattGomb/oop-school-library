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
  end

  def create_book
  end

  def create_rental
  end

  def list_rentals
  end
end
 