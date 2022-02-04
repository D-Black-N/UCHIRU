require 'date'
students = [
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
  {id: 12, name: "Евгений",   created_at: DateTime.new(2020, 5,  2, 12, 0, 0), parent_id: nil},
  {id: 13, name: "Михаил",    created_at: DateTime.new(2021, 1,  5, 12, 0, 0), parent_id: 8},
  {id: 14, name: "Ян",        created_at: DateTime.new(2021, 9, 13, 12, 0, 0), parent_id: 6},
  {id: 15, name: "Елизавета", created_at: DateTime.new(2021, 1, 29, 12, 0, 0), parent_id: nil},
  {id: 16, name: "Андрей",    created_at: DateTime.new(2020, 7, 17, 12, 0, 0), parent_id: 9},
  {id: 17, name: "Екатерина", created_at: DateTime.new(2020, 9, 26, 12, 0, 0), parent_id: 10},
  {id: 18, name: "Тимур",     created_at: DateTime.new(2021, 6,  6, 12, 0, 0), parent_id: 11},
]

parents = [
  {id:  1, name: "Марина",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  2, name: "Алексей",   created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  3, name: "Степан",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  4, name: "Анастасия", created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  5, name: "Марина",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  6, name: "Марина",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  7, name: "Максим",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  8, name: "Иван",      created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id:  9, name: "Марина",    created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id: 10, name: "Юлия",      created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
  {id: 11, name: "Екатерина", created_at: DateTime.new(2019, 7, 29, 12, 0, 0)},
]
puts "Количество студентов: #{students.length}"
puts "Количество студентов, у которых есть родители: #{students.count { |item| !item[:parent_id].nil? }}"
sum = 0
parents.find_all { |item| item[:name] === "Марина" }
  .map { |item| item[:id] }   
  .each { |student| sum += students.count { |item| item[:parent_id] === student } }
puts "Количество студентов, у которых имя родителя Марина: #{sum}"
puts "Количество студентов, у которых нет родителей: #{students.count { |item| item[:parent_id].nil? }}"