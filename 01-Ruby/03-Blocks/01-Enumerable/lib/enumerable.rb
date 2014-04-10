def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  somme = 0
  array.each_with_index do |element, i|
  somme += element if i.odd?
  end
  somme
end


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |num|
    num.even?
  end
end

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject {|word| word.length > max_length }
  #pas besoin de if
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  #Retourner le premier chiffre d'un array qui est moins que la limite.
  # donc définir limite et voir si les chiffres
  array.find(ifnone = "surpasse") { |num| num < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
array.map {|element| element + "!" }
end

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
array.reduce(:*)
end


def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  result = []
  array.each_slice(2) do |slice|
    result << slice.sort
  end
  result
end