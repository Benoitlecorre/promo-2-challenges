def sum_with_while(min,max)
  x = min
  sum = 0

  while x <= max do
    sum += x
    x += 1
  end
  sum
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
end


def sum_with_for(min,max)
  sum = 0
  for i in min..max do
    sum += i
  end
  sum
  #O: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
end

def sum_recursive(min,max)
  #if min == max do
  #return max
  #else
   # min + somme(min+ 1, max)
  #end
  #TODO (optional): return the sum of the integers between min and max
  #CONTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end
