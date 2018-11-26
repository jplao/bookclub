class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @author_books = @author.books
  end

  def destroy
    @author = Author.find(params[:id])
    Book.destroy_books(params[:id])
    @author.delete
    redirect_to root_path
  end

end