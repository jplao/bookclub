class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  def self.average_rating
    if self.all.empty?
      0
    else
      average(:score).round(2)
    end
  end

  def self.top_three
      ordered_reviews = order(score: :desc)
      ordered_reviews.first(3)
  end

  def self.bottom_three
      ordered_reviews = order(score: :asc)
      ordered_reviews.first(3)
  end

  
end
