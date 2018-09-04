#leap years: divisible by 4
#years divisible by 100 are NOT leap years
#unless they are also divisible by 400
puts ' '
width = 56
puts(          "The purpose of this program is to ask the user".center(width))
puts(                    "to enter two years into the program.".center(width))
puts ' '
puts("It will then return which of those years are leap years.".center(width))
puts ' '

puts "Please enter your starting year:" 
start_year = gets.chomp
puts "Please enter your closing year:"
end_year = gets.chomp

puts ' '
puts "The leap years between #{start_year} and #{end_year} are:"
puts ' '

for year in start_year.to_i..end_year.to_i
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        puts year
    end
end