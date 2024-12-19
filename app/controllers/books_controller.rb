class BooksController < ApplicationController

  def new
    @book = Book.new
  end

    # 投稿データの保存
    def create
      @book = Book.new(book_params)
      @book.user_id = current_user.id
      @book.save
      redirect_to book_path(@book.id)
    end

    def show
      @book = Book.find(params[:id])
  
      @user = @book.user

    end

    def index
      @user = current_user
      @books = Book.all.includes(:user) # Bookとそれに紐づくUser情報を取得
    end
    
    private

    def book_params
      params.require(:book).permit(:title, :body, :user_id)
    end

end
