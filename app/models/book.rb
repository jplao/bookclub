class Book < ApplicationRecord
  has_many :reviews
  has_many :book_authors
  has_many :authors, through: :book_authors

  # def self.sort_avg_asc
  #   @books = Book.all
  #   rog = @books.collect do |book|
  #     book.reviews.average(:score).order("score asc").to_s
  #   end
  #   rog
  # end

end
