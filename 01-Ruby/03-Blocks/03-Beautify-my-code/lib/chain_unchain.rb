def shuffle_word(a_word)
  #TODO: refactor this method

  shuffle_array = a_word.upcase.chars.to_a.shuffle

end


def quote_prime_numbers(n)
  #TODO: refactor this method

  (1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}

=begin
de 1 à n, tu dois trouver et mettre tous les i de 2 jusqu'à tous les i
=end

end