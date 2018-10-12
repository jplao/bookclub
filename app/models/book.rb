class Book < ApplicationRecord
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors


  def self.sort_by(column, direction)
    select('books.*, avg(reviews.score) as avg_score, count(reviews.id) as total_reviews')
    .joins(:reviews)
    .group(:book_id, :id)
    .order("#{column} #{direction}")
  end

  #def self.sort_pages_asc
  #  order(:pages)
  #end

  #def self.sort_pages_desc
  #  order(pages: :desc)
  #end
end
