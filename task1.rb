array = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

def get_two_max_values(array)
  [array.delete(array.max), array.max]  
end

def get_two_min_values(array)
  [array.delete(array.min), array.min]
end

puts "Максимальные: #{get_two_max_values array}, Минимальные: #{get_two_min_values array}"