# Управление постами
class PostController < ApplicationController
  
  # Получение всех постов на странице просмотра
  # GET post 
  def index
    @posts = Post.all
    @current_user = current_user
  end

  # Форма создания нового поста
  # GET post_new
  def new
    @current_user = current_user
    @post = Post.new
  end

  # Создание нового поста
  # POST post
  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post_index_path
    else
      redirect_to post_index_path(message: "Ошибка создания поста!")
    end
  end

  # Редактирования поста, принадлежащего пользователю
  # GET post/:id/edit
  def edit
    @post = Post.find(params[:id])
    @current_user = current_user
  end

  # Обновления поста после редактирования
  # PATCH post/:id
  def update
    post = Post.find(params[:id])
    post.update(post_params) ? message = "Обновлено!" : message = "Ошибка обновления!"
    redirect_to post_index_path(message: message)
  end

  # Удаление поста пользователя
  # DELETE post/:id
  def destroy
    Post.find(params[:id]).destroy
    redirect_to post_index_path(message: "Пост успешно удален!")
  end

private
  # Hash strong params для постов
  def post_params
    params.require(:post).permit(:name, :text, :user_id)
  end
end
