class Review < ApplicationRecord
  belongs_to :book

  def self.average_rating
    if self.all.empty?
    else
      average(:score).round
    end
  end
end
