arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]
puts "Ключи: #{arr.map { |hash| hash.keys }.flatten}"
values = arr.map { |hash| hash.values }.flatten
puts "Значения: #{values}"
puts "Сумма значений: #{values.sum}"