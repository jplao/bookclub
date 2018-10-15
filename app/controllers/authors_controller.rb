class AuthorsController < ApplicationController

  def show
    @authors = Author.find(params[:id])
    @author_books = @authors.books
    @book_reviews = @authors.book_reviews
  end

end
