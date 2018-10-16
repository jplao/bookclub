class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors, dependent: :destroy

  validates_presence_of :title, :pages, :year

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

  def self.book_create(params)
    if Book.find_by(title: params[:title]) == nil && Author.find_by(name: params[:authors]) == nil
      author = Author.create(name: params[:authors])
      book = author.books.create(title: params[:title], pages: params[:pages], year: params[:year])
    elsif Book.find_by(title: params[:title]) && Author.find_by(name: params[:authors]) == nil
      author = Author.create(name: params[:authors])
      book = Book.find_by(title: params[:title])
      author.books << book
    elsif Book.find_by(title: params[:title]) == nil && Author.find_by(name: params[:authors])
      author = Author.find_by(name: params[:authors])
      book = author.books.create(title: params[:title], pages: params[:pages], year: params[:year])
    else
      book = Book.find_by(title: params[:title])
      Author.find_by(name: params[:authors]).books << book
    end

    book
  end

  def before_save
    self.title.capitalize!
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
