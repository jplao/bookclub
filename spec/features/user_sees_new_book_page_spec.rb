require 'spec_helper'

describe 'user can create a book' do
  it 'when visiting /books/new' do

  book_title = "New Book"
  book_pages = 432
  book_year = 2017

  visit '/books/new'

  fill_in 'book[title]', with: book_title
  fill_in 'book[pages]', with: book_pages
  fill_in 'book[year]', with: book_year
  click_on "Create Book"

  expect(page).to have_content(book_title)
  expect(page).to have_content(book_pages)
  expect(page).to have_content(book_year)

  expect(current_path).to eq("/books/#{Book.last.id}")
  end
end
