class User < ApplicationRecord
  has_many :reviews

  def self.top_users
    select('users.*, count(reviews.id) as total_reviews')
    .joins(:reviews)
    .group(:user_id, :id)
    .order('total_reviews desc')
    .limit(3)
  end

  def self.sorted_reviews(direction)
    select('users.*, reviews.created_at as review_date')
    .joins(:reviews)
    .group(:user_id, :id)
    .order("review_date #{direction}")
  end

end
