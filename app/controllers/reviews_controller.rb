class ReviewsController < ApplicationController

  def destroy
    @reviews = Review.find(params[:id])
    @user = Review.find(params[:id]).user_id
    @reviews.destroy
    redirect_to user_path(@user)
  end

  def new
    @review = Review.new
  end

  def create
    review_params = params.require(:review).permit(:title, :pages, :year, )
    @review = Review.new(review_params)
    @review.save
    redirect_to "/books/#{@review.book_id}"
  end
end
