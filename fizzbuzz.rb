line_length = 60
puts(                                            "FIZZBUZZ".center(line_length))
puts(       "Numbers divisible by 3 are replaced by 'FIZZ'".center(line_length))
puts(       "Numbers divisible by 5 are replaced by 'BUZZ'".center(line_length))
puts("Numbers divisible by both are replaced by 'FIZZBUZZ'".center(line_length))
puts ' '

puts "Please enter your starting number:"
start_num = gets.chomp
puts "Now enter your ending number:"
end_num = gets.chomp
puts ' '

puts "Time to play!"
puts ' '

for num in start_num.to_i..end_num.to_i
    if num % 15 == 0
        puts "FIZZBUZZ"
    elsif num % 5 == 0
        puts "BUZZ"
    elsif num % 3 == 0
        puts "FIZZ"
    else
        puts num
    end
end