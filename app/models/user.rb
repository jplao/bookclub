class User < ApplicationRecord
  has_many :reviews

  validates_presence_of :name

  def self.top_users
    select('users.*, count(reviews.id) as total_reviews')
    .left_joins(:reviews)
    .group(:id)
    .order('total_reviews desc')
    .limit(3)
  end

  def sorted_reviews(params)
    if params[:sort] == 'new'
      reviews.order(created_at: :desc)
    elsif params[:sort] == 'old'
      reviews.order(created_at: :asc)
    else
      reviews
    end
  end

end
