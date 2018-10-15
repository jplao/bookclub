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

  def self.top_review_title
    if self.all.empty?
      'No reviews'
    else
      order(score: :desc).first.title
    end
  end

  def self.top_review_score
    if self.all.empty?
      'No reviews'
    else
      order(score: :desc).first.score
    end
  end

  def self.top_review_user_name
    if self.all.empty?
      "No reviews"
    else
      order(score: :desc).first.user.name
    end
  end

  def self.top_review
    if self.all.empty?
      0
    else
      order(score: :desc).first.user.id
    end
  end

  def user_name
    user.name
  end

end
