class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors, dependent: :destroy


  def self.sort_by(column, direction)
    select('books.*, avg(reviews.score) as avg_score, count(reviews.id) as total_reviews')
    .left_outer_joins(:reviews)
    .group(:book_id, :id)
    .order("#{column} #{direction}", 'title asc')
  end

  def self.top_rated_books
    select('books.*, avg(reviews.score) as avg_score')
    .joins(:reviews)
    .group(:book_id, :id)
    .order('avg_score desc', 'title asc')
    .limit(3)
  end

  def self.bottom_rated_books
    select('books.*, avg(reviews.score) as avg_score')
    .joins(:reviews)
    .group(:book_id, :id)
    .order('avg_score asc', 'title asc')
    .limit(3)
  end

  def average_review_rating
    if reviews == []
      0
    else
      reviews.average(:score).round(2)
    end
  end

  def self.destroy_books(author_id)
    books = select('books.*, count(DISTINCT book_authors) AS auth_count')
    .joins(:book_authors)
    .group(:id, :book_id)
    .having('count(book_authors) = 1')
    .where("books.id IN (SELECT book_authors.book_id FROM book_authors WHERE author_id = ?)", author_id)
    .pluck(:id)

    destroy(books)
  end
end
