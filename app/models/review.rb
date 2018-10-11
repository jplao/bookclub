class Review < ApplicationRecord
  belongs_to :book

  def self.average_rating
    if self.all.empty?
    else
      average(:score).round(2)
    end
  end

  def self.top_three
    if self.all.empty?
    else
      reviews = order(score: :desc)
      reviews.first(3)
    end
  end

  def self.bottom_three
    if self.all.empty?
    else
      reviews = order(score: :asc)
      reviews.first(3)
    end
  end
end
