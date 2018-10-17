require 'spec_helper'

describe 'user can create a new review' do
  it 'when visiting /review/new' do
  illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)

  review_title = "New Review"
  user_name = "John Smith"
  description = "This is a new review"


  visit "/books/#{illuminae.id}"
  click_on "New Review"

  expect(current_path).to eq("/reviews/new")

  fill_in 'review[title]', with: review_title
  choose("review_score_4")
  fill_in 'review[user_name]', with: user_name
  fill_in 'review[description]', with: description
  click_on "Create Review"

  expect(page).to have_content(review_title)
  expect(page).to have_content("Rating: 4")
  expect(page).to have_content("User Name: #{user_name}")
  expect(page).to have_content(description)
  expect(current_path).to eq("/books/#{illuminae.id}")
  end
end
