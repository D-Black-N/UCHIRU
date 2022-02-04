def convert_to_f(number)
  number * 9/5 + 32
end

begin
  print "Введите градусы по Цельсию: "
  number = Float gets.chomp
rescue ArgumentError
  puts "Введено неверное число!"
  retry
end
puts "Конвертация в градусы по Фаренгейту: #{convert_to_f number}"
