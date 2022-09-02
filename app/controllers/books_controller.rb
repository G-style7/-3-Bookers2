class BooksController < ApplicationController
  # def new
  # @books = Book.new
  # end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      # flash[:notice] = "投稿に成功しました。"
       redirect_to book_path(@book.id) # 2-10
    else
      # flash.now[:danger] = "登録に失敗しました"
       render :index
    end
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all #Bookモデルのテーブルに保存されている全てのデータを取得する
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @book_new = Book.new
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  private
  def book_params #privateメソッドの名前は、「モデル名_params」とすることが多い
    params.require(:book).permit(:title, :body) #bookはモデルのtitle.bodyカラムを承認
  end
end