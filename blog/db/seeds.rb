# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parents = Parent.create([
    {name: "Мария",         created_at: DateTime.new(2020, 8,  18, 12, 0, 0)},
    {name: "Евгений",       created_at: DateTime.new(2020, 10, 20, 12, 0, 0)},
    {name: "Ульяна",        created_at: DateTime.new(2020, 11, 10, 12, 0, 0)},
    {name: "Александр",     created_at: DateTime.new(2019, 8,  27, 12, 0, 0)},
    {name: "Владимир",      created_at: DateTime.new(2021, 11,  8, 12, 0, 0)},
    {name: "Алексей",       created_at: DateTime.new(2019, 8,  18, 12, 0, 0)},
    {name: "Ольга",         created_at: DateTime.new(2020, 10, 22, 12, 0, 0)},
    {name: "Мария",         created_at: DateTime.new(2020, 8,  11, 12, 0, 0)},
    {name: "Юлия",          created_at: DateTime.new(2020, 7,  22, 12, 0, 0)},
    {name: "Константин",    created_at: DateTime.new(2020, 5,  29, 12, 0, 0)},
])

Student.create([
    {name: "Данил",         created_at: DateTime.new(2020, 7,  22, 12, 0, 0), parent_id: parents.first.id},
    {name: "Иван",          created_at: DateTime.new(2020, 10, 20, 12, 0, 0), parent_id: parents.last.id},
    {name: "Кирилл",        created_at: DateTime.new(2021, 11,  8, 12, 0, 0)},
    {name: "Мария",         created_at: DateTime.new(2020, 11, 10, 12, 0, 0), parent_id: parents.second.id},
    {name: "Елизавета",     created_at: DateTime.new(2020, 5,  29, 12, 0, 0)},
    {name: "Анастасия",     created_at: DateTime.new(2021, 11,  8, 12, 0, 0), parent_id: parents[7].id},
    {name: "Иван",          created_at: DateTime.new(2019, 8,  27, 12, 0, 0), parent_id: parents.first.id},
    {name: "Антон",         created_at: DateTime.new(2020, 7,  22, 12, 0, 0), parent_id: parents[3].id},
    {name: "Павел",         created_at: DateTime.new(2020, 8,  18, 12, 0, 0)},
    {name: "Михаил",        created_at: DateTime.new(2020, 8,  18, 12, 0, 0), parent_id: parents.last.id},
    {name: "Юлия",          created_at: DateTime.new(2021, 11,  8, 12, 0, 0), parent_id: parents[8].id},
    {name: "Данил",         created_at: DateTime.new(2020, 8,  18, 12, 0, 0), parent_id: parents.second.id},
    {name: "Иван",          created_at: DateTime.new(2020, 7,  22, 12, 0, 0), parent_id: parents[2].id},
    {name: "Андрей",        created_at: DateTime.new(2020, 8,  18, 12, 0, 0)},
    {name: "Маргарита",     created_at: DateTime.new(2021, 11,  8, 12, 0, 0), parent_id: parents[6].id},
    {name: "Марат",         created_at: DateTime.new(2019, 8,  27, 12, 0, 0), parent_id: parents.third.id},
    {name: "Алина",         created_at: DateTime.new(2020, 5,  29, 12, 0, 0), parent_id: parents[7].id},
    {name: "Валерия",       created_at: DateTime.new(2020, 7,  22, 12, 0, 0)},
    {name: "Иван",          created_at: DateTime.new(2019, 8,  27, 12, 0, 0), parent_id: parents[4].id},
    {name: "Константин",    created_at: DateTime.new(2020, 5,  29, 12, 0, 0)}
])