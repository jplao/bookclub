class BooksController < ApplicationController
  def index
    if params[:sort]
      @books = Book.sort_by(params[:sort], params[:direction])
    else
      @books = Book.all
    end
    @top_rated_books = Book.top_rated_books
    @bottom_rated_books = Book.bottom_rated_books
    @top_users = User.top_users
  end

  def show
      @books = Book.find(params[:id])
  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to root_path
  end

  def new
    @book = Book.new
  end

  def create
    book_params = params.require(:book).permit(:title, :pages, :year, )
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
  end
end
