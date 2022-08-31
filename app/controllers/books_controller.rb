class BooksController < ApplicationController
  def new
   @books = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path # 2-10

  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all #Bookモデルのテーブルに保存されている全てのデータを取得する
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
  end

  def edit
  end


 private
  def book_params #privateメソッドの名前は、「モデル名_params」とすることが多い
    params.require(:book).permit(:title, :body) #bookはモデルのtitle.bodyカラムを承認
  end
end