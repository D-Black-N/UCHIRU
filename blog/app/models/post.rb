class Post < ApplicationRecord
  # один ко многим с моделью пользователя
  belongs_to :user

  # Валидация модели
  validates :name, presence: true
  validates :user, presence: true
end
