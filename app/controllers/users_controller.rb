class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:is])
    @user.update
    redirect_to user_path(user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name)
  end


end

