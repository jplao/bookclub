class Book < ApplicationRecord
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors

  # def self.sort_avg_desc
  #   @books = Book.all
  #     order('@books.reviews.average_rating DESC')
  # end

  # def self.queries(params)
  #
  # end

  def self.sort_pages_asc
    order(:pages)
  end

  def self.sort_pages_desc
    order(pages: :desc)
  end

  def self.sort_avg_rating_asc
    a
  end
end
