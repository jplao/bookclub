class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
    @user_reviews = @users.sorted_reviews(params)
  end
end
