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
    review_params = params.require(:review).permit(:title, :description, :score, :book_id)
    user_name = params.dig(:review, :user_name)
    # debugger
    @user = User.find_or_create_by!(name: user_name)
    @review = Review.new(review_params)
    @review.user = @user
    @review.save
    redirect_to book_path(@review.book)
  end
end
