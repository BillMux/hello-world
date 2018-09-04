def find_next_square(sq)
    # Return the next square if sq is a perfect square, -1 otherwise
    if (sq ** 0.5) % 1 == 0
     next_sq = ((sq ** 0.5) + 1) ** 2
     puts next_sq.to_i
    else
      puts 'That\'s not a square number!'
    end
  end
  
  find_next_square(2)