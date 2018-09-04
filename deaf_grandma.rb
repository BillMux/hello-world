puts "Say something to Grandma"
while true
    something = gets.chomp
    if something != something.upcase
        puts "WHAT? SPEAK UP SONNY!"
    else
        puts "NO, NOT SINCE 1938!"
    end
    if something == "BYE" #make them shout 'BYE' three times in a row
        break
    end
end