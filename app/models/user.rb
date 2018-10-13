class User < ApplicationRecord
  has_many :reviews

  def self.top_users
    select('users.*, count(reviews.id) as total_reviews')
    .joins(:reviews)
    .group(:user_id, :id)
    .order('total_reviews desc')
    .limit(3)
  end

end
