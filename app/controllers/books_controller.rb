class BooksController < ApplicationController
  def new
   @books = Book.all
  end

  def create
  end

  def index
  end

  def show
  end

  def destroy
  end
end
