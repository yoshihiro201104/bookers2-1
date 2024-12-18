class BooksController < ApplicationController

  def new
    @book = Books.new
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
      # @profile_image = @user.get_profile_image(100, 100) 
      @user = @book.user

    end

    def index
      @books = Book.all
    end
    
    private

    def book_params
      params.require(:book).permit(:title, :body, :user_id)
    end

end
