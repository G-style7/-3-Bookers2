class BooksController < ApplicationController
  def new
   @books = Book.all
  end

  def create
    # @book = Book.new(book_params)
    # @book.user_id = current_user.id
    # @book.save
    # redirect_to books_path
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def show
  end

  def destroy
  end

  def edit
  end


 private
  def book_params
    params.require(:book).permit(:title, :body) #bookはモデルがtitle.bodyカラムを承認
  end
end