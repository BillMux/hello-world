def old_roman_numeral num

    if num < 0
        puts 'Please enter a postive integer.'
        old_roman_numeral gets.chomp.to_i
    elsif num < 5
        puts 'I' * num
    elsif num < 10
        print 'V'
        print 'I' *  (num - 5)
    elsif num < 50
        print 'X' *  (num / 10)
        print 'V' * ((num / 5) % 2)
        print 'I' *  (num % 5)
    elsif num < 100
        print 'L'
        print 'X' * ((num - 50) / 10)
        print 'V' * ((num / 5) % 2)
        print 'I' *  (num % 5)
    elsif num < 500
        print 'C' *  (num / 100)
        print 'L' * ((num / 50) % 2)
        print 'X' * ((num - ((num / 100) * 100) - 50 * ((num / 50) % 2)) / 10)
        print 'V' * ((num / 5) % 2)
        print 'I' *  (num % 5)
    elsif num < 1000
        print 'D'
        print 'C' * ((num - 500) / 100)
        print 'L' * ((num / 50) % 2)
        print 'X' * ((num - ((num / 100) * 100) - 50 * ((num / 50) % 2)) / 10)
        print 'V' * ((num / 5) % 2)
        print 'I' * (num % 5)
    else
        print 'M' *  (num / 1000) 
        print 'D' * ((num / 500) % 2)
        print 'C' * ((num - ((num / 1000) * 1000) - 500 * ((num / 500) % 2)) / 100)
        print 'L' * ((num / 50) % 2)
        print 'X' * ((num - ((num / 100) * 100) - 50 * ((num / 50) % 2)) / 10)
        print 'V' * ((num / 5) % 2)
        print 'I' *  (num % 5)
    end
end

line_width = 60

puts                        'OLD SCHOOL ROMAN NUMERALS'.center(line_width)
puts    'Apparently, before the "modern" roman numeric'.center(line_width)
puts      'system came into play, the old system those'.center(line_width)
puts 'Romans had didn\'t do the whole "smaller numeral'.center(line_width)
puts     'before a bigger one means "less than" thing.'.center(line_width)
puts
puts 'Who knew?' 
puts '...'
puts "I'm probably not explaining very well"
puts 'Anyway, enter a number and I\'ll show you!'
num = gets.chomp.to_i
old_roman_numeral num