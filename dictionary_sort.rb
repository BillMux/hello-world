dictionary_array = []
puts 'What would you like to do?'

while true
    puts
    puts 'Add?'
    puts 'Display?'
    puts 'Delete?'
    puts 'Exit?'
    answer = gets.chomp.downcase
    if answer == 'add'
        puts 'Type word to add:'
        word = gets.chomp.downcase
        dictionary_array.push word
        puts 'What next?'
    elsif answer = 'display'
        puts dictionary_array.sort
    elsif answer == 'delete'
        puts 'Which word would you like to delete?'
        word_to_delete = gets.chomp
        dictionary_array.pull word
    elsif answer == 'exit'
        puts 'Goodbye'
        break
    else
        puts 'Please select one of the options above'
    end
end
puts 'Add something to this array'
word = gets.chomp
dictionary_array.push word
puts dictionary_array

