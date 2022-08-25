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
  end
end

