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
end
