class AuthorsController < ApplicationController

  def show
    @authors = Author.find(params[:id])
  end

  def destroy
    @authors = Author.find(params[:id])
    @book_ids = Author.find(params[:id]).book_ids
    @books = Book.find(:id).where(book.id == @books_ids)
    @books.destroy
    @authors.destroy
    redirect_to root_path
  end

end
