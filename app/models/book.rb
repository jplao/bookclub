class Book < ApplicationRecord
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors

  def self.queries(arg_1, arg_2)
    select('books.*, avg(reviews.score) as avg_score, count(reviews.id) as total_reviews').joins(:reviews).group(:book_id, :id).order(arg_1 arg_2)
  end

  def self.sort_pages_asc
    order(:pages)
  end

  def self.sort_pages_desc
    order(pages: :desc)
  end
end
