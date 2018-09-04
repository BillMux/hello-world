def english_number number

    if number == 0
        return 'zero' 
    end
    
    num_string = ''

    if number < 0
        number = -number
        num_string = 'minus '
    end

    ones_arr = [ 'one',          'two',          'three',
                 'four',         'five',         'six',
                 'seven',        'eight',        'nine'      ]

    tens_arr = [ 'ten',          'twenty',       'thirty',
                 'forty',        'fifty',        'sixty',
                 'seventy',      'eighty',       'ninety'    ]

    teens_arr = [ 'eleven',      'twelve',       'thirteen',
                  'fourteen',    'fifteen',      'sixteen',
                  'seventeen',   'eighteen',     'nineteen'  ]

    billions =   number /          1_000_000_000
    millions  = (number - billions*1_000_000_000) /         1_000_000
    thousands = (number - billions*1_000_000_000 - millions*1_000_000) /          1000
    hundreds  = (number - billions*1_000_000_000 - millions*1_000_000 - thousands*1000)/100
    tens      = (number - billions*1_000_000_000 - millions*1_000_000 - thousands*1000 - hundreds*100)    /  10
    ones      =  number - billions*1_000_000_000 - millions*1_000_000 - thousands*1000 - hundreds*100 - tens*10

    if billions > 0
        num_string = num_string + (english_number billions) + ' billion '
    end

    if millions > 0
        num_string = num_string + (english_number millions) + ' million '
    end

    if    thousands > 9
        num_string = num_string + (english_number thousands) + ' thousand '
    elsif thousands > 0
        num_string = num_string + ones_arr[thousands-1] + ' thousand '
    end

    if thousands > 0 && hundreds == 0 && (tens > 0 || ones > 0)
        num_string = num_string + 'and '
    end

    if     hundreds > 0 && (tens > 0 || ones > 0)
        num_string = num_string + ones_arr[hundreds-1] + ' hundred and '
    elsif  hundreds > 0
        num_string = num_string + ones_arr[hundreds-1] + ' hundred'
    end

    if    tens == 1 && ones > 0
        num_string = num_string + teens_arr[ones-1] 
    elsif tens > 0
        num_string = num_string +  tens_arr[tens-1]
    end

    if tens > 1 && ones > 0
        num_string = num_string + '-' + ones_arr[ones-1]
    end

    if thousands == 0 && hundreds == 0 && tens == 0 && ones > 0
        num_string = num_string + ones_arr[ones-1]
    end
    num_string
end

puts 'Enter a number'
puts english_number gets.chomp.to_i