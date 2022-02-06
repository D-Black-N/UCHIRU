# Управление пользователем
class UserController < ApplicationController
  
  # Страница создания нового пользователя
  # GET user
  def index
    @user = User.new
  end

  # создание нового пользователя
  # POST user
  def create
    user = User.new(user_params)
    if user.save
      redirect_to session_index_path(message: "Пользователь успешно создан!")
    else
      redirect_to session_index_path(message: "Ошибка создания пользователя!")
    end
  end

  # Получение данных пользователя для редактирования
  # GET user/:id/edit
  def edit
    @user = current_user
  end

  # Обновление данных пользователя
  # PATCH user/:id
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to edit_user_path(message: "Данные пользователя успешно обновлены!")
    else
      redirect_to edit_user_path(message: "Ошибка обновления пользователя!")
    end
  end

  # Удаления аккаунта пользователя
  # DELETE user/:id
  def destroy
    user = current_user
    user.destroy
    log_out
    redirect_to session_index_path(message: "Аккаунт пользователя удален!")
  end

private

  # Hash Strong params для пользователей
  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end
end
