require 'date'
data = [
  {id: 1,  name: "Данил",     created_at: DateTime.new(2019, 7, 29, 12, 0, 0), parent_id: 1},
  {id: 2,  name: "Андрей",    created_at: DateTime.new(2019, 8,  2, 12, 0, 0), parent_id: 3},
  {id: 3,  name: "Иван",      created_at: DateTime.new(2019, 7, 28, 12, 0, 0), parent_id: 1},
  {id: 4,  name: "Мария",     created_at: DateTime.new(2020, 8, 11, 12, 0, 0), parent_id: 2},
  {id: 5,  name: "Кристина",  created_at: DateTime.new(2020, 8, 18, 12, 0, 0), parent_id: 8},
  {id: 6,  name: "Иван",      created_at: DateTime.new(2020, 2, 21, 12, 0, 0), parent_id: 4},
  {id: 7,  name: "Юрий",      created_at: DateTime.new(2019, 8, 27, 12, 0, 0), parent_id: 2},
  {id: 8,  name: "Александра",created_at: DateTime.new(2020, 8,  8, 12, 0, 0), parent_id: 7},
  {id: 9,  name: "Юлия",      created_at: DateTime.new(2020, 8,  7, 12, 0, 0), parent_id: 3},
  {id: 10, name: "Иван",      created_at: DateTime.new(2019, 9, 12, 12, 0, 0), parent_id: 8},
  {id: 11, name: "Анастасия", created_at: DateTime.new(2020, 8, 14, 12, 0, 0), parent_id: 6},
  {id: 12, name: "Евгений",   created_at: DateTime.new(2020, 5,  2, 12, 0, 0)},
  {id: 13, name: "Михаил",    created_at: DateTime.new(2021, 1,  5, 12, 0, 0), parent_id: 8},
  {id: 14, name: "Ян",        created_at: DateTime.new(2021, 9, 13, 12, 0, 0), parent_id: 6},
  {id: 15, name: "Елизавета", created_at: DateTime.new(2021, 1, 29, 12, 0, 0)},
  {id: 16, name: "Андрей",    created_at: DateTime.new(2020, 7, 17, 12, 0, 0), parent_id: 9},
  {id: 17, name: "Екатерина", created_at: DateTime.new(2020, 9, 26, 12, 0, 0), parent_id: 10},
  {id: 18, name: "Тимур",     created_at: DateTime.new(2021, 6,  6, 12, 0, 0), parent_id: 11},
]

puts "Количество студентов: #{data.length}"
puts "Количество студентов с именем Иван: #{data.count { |item| item[:name] === "Иван" }}"
puts "Количество студентов, созданных после 01.09.2020:  #{
  data.count { |item| item[:created_at] >= DateTime.new(2020, 9, 1) }
}"