class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
    @author_books = @author.books
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
