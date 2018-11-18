class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @author_books = @author.books
  end

  def destroy
    @author = Author.find(params[:id])
    Book.destroy_books(params[:id])
    @author.destroy
    redirect_to root_path
  end

end
