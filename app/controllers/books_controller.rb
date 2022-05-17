class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
  end

  def create
    @book = Book.new(book_params)
  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end




