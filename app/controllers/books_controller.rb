class BooksController < ApplicationController

  def new
    @book = Books.new
  end

    # 投稿データの保存
    def create
      @book = book.new(book_params)
      @book.user_id = current_user.id
      @book.save
      redirect_to book_path
    end


end
