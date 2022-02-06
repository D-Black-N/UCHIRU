# Управление сессией пользователя
class SessionController < ApplicationController
  
  # Открытие формы авторизации
  # GET session
  def index
    @message ||= params[:message]
  end

  # Создание новой сессии
  # POST session
  def create
    user = User.find_by_login(params[:session][:login]) 
    if user && user.authenticate(params[:session][:password]) 
      log_in user                                             
      redirect_to root_path
    else
      redirect_to session_index_path(message: "Ошибка авторизации: неверный логин или пароль")
    end
  end

  # Завершение сессии пользователя
  # DELETE session
  def destroy
    log_out
    redirect_to session_index_path(message: "Выход выполнен успешно!")
  end
end
