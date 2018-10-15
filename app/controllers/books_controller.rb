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
    @book_authors = @books.authors
    @books_reviews = @books.reviews
    @top_three = @books_reviews.top_three
    @bottom_three = @books_reviews.bottom_three
    @review_avg_rating = @books_reviews.average_rating
  end
end
