movies_array = []
puts
puts "Welcome to your interactive Ruby movie database!"
puts
puts 'Type "add" to add a movie to the database'
puts 'Type "display" to see the full list'
puts 'Type "delete" to select a movie to delete'
puts 'Type "exit" to leave the database'
while true
    response = gets.chomp.downcase
    if    response == 'add'
        puts
        print 'Enter a movie to add: '
        movies_array.push gets.chomp.split.each{ |x| x.capitalize! }.join(' ')
        puts
        puts 'What would you like to do next?'
    elsif response == 'display'
        puts
        puts movies_array.sort
        puts
        puts 'What would you like to do next?'
    elsif response == 'delete'
        print 'Which movie would you like to delete? '
        puts
        delete_movie = gets.chomp.split.each{ |x| x.capitalize! }.join(' ')
        movies_array.delete(delete_movie)
        puts
        puts 'Deleted!'
        puts
        puts 'What would you like to do next?'
    elsif response == 'exit'
        puts
        puts 'Goodbye'
        break
    else
        puts "Please choose one of the above options"
    end
end