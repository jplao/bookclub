class BooksController < ApplicationController
  def index
    if params[:sort]
      @books = Book.sort_by(params[:sort], params[:direction])
    else
      @books = Book.all
    end
  end

  def show
      @books = Book.find(params[:id])
  end
end
