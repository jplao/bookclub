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

end
