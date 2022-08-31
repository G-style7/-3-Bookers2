class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book_new = Book.new
  end

  def edit
  end

end

