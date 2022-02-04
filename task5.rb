params = {"red" => "стоять", "yellow" => "ждать", "green" => "идти"}

key = true
begin
  begin
    puts "Введите цвет светофора(red, yellow, green) или введите 'exit' для выхода"
    input = gets.chomp
    puts params.fetch(input)
  rescue IndexError
    if input === 'exit'
      key = false
      puts "Выход из программы..."
    else
      puts "Введено неверное значение"
      retry
    end
  end
end while key