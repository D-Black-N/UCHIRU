# Контроллер для заданий 6-7
class TaskController < ApplicationController

  def index
    # Количество студентов
    @students = Student.all.count

    # Количество студентов с именем Иван
    @with_name = Student.where(name: "Иван").count

    # Количество студентов, созданных после 01.09.2020
    time = DateTime.new(2020, 9, 1, 0, 0, 0)
    @with_date = Student.where("created_at >= ?", time).count

    # Количество студентов с родителями
    @with_parents = Student.where.not(parent_id: nil).count

    # Количество студентов, у которых имя родителя Мария
    @with_parents_name = Parent.where(name: "Мария")
                                  .map { |item| Student.where(parent_id: item.id) }.flatten.count

    # Количество студентов без родителя
    @without_parent = Student.where(parent_id: nil).count
  end
end
