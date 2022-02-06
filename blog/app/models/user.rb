class User < ApplicationRecord
  # один ко многим с моделью постов
  has_many :posts, dependent: :destroy
  
  # шифрование пароля 
  has_secure_password

  # Валидации модели
  validates :login, length: {minimun: 5, maximum: 15}, uniqueness: true
end
