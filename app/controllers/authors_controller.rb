class AuthorsController < ApplicationController

  def show
    @authors = Author.find(params[:id])
    @author_books = @authors.books
  end

end
