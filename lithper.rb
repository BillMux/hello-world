puts 'Thith program thimply readth what you type'
puts 'and repeatth it back with the motht perfect'
puts 'anunthiathion!'
puts 'You can thtop the program whenever you withhh'
puts 'by thimply typing "thtop"!'
print "Pleathe type thomething: " 


while true
    user_input = gets.chomp
    user_input.downcase!

    if user_input == 'stop'
        puts 'Thee you thoon!'
        break
    end

    if user_input.include? "s"
        user_input.gsub!(/s/, "th")
        puts user_input
        puts "Type thomething elthe if you like, or type thtop to thtop!"
    elsif user_input.include? "ce"; user_input.include? "ci"
        user_input.gsub!(/c/, "th")
        puts user_input
        puts "Type thomething elthe if you like, or type thtop to thtop!"
    else
        puts "There'th no etheth!"
    end
end