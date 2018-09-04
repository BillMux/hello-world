# a few notes on the modern roman numeric system

# the new system introduces the concept of adding smaller numeric values
# before a larger value to signify that the number is 'x' less than 'y'
# for instance 'IV' means '1 less than 4'

# the interval between each roman numeral digit is defined by factors of five
# therefore we only use the 'less than' function when a number is 1, 5, 10, 50, 100, or 500
# less than the higher value.

class Integer

    def to_roman
        result = ''
        number = self
        romanize.keys.each do |divider|
            quotient, modulus = number.divmod(divider)
            result << romanize[divider] * quotient
            number = modulus
        end
        result
    end

    private

    def romanize
        {
            1000 => 'M',
            900 => 'CM',
            500 => 'D',
            400 => 'CD',
            100 => 'C',
            90 => 'XC',
            50 => 'L',
            40 => 'XL',
            10 => 'X',
            9 => 'IX',
            5 => 'V',
            4 => 'IV',
            1 => 'I',
        }
    end

end

puts 'Type a number to romanize'
number = gets.chomp.to_i
puts number.to_roman