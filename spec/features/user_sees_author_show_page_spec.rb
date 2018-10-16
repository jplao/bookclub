require 'rails_helper'

describe "a visitor visits the author show page" do
  it "should show all books written by author info" do
    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')

    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    obsidio = Book.create(title: 'Obsidio', pages: 621, year: 2018)
    obsidio.authors << [kaufman,kristoff]

    visit "/authors/#{kaufman.id}"

    expect(page).to have_content(illuminae.title)
    expect(page).to have_content(illuminae.pages)
    expect(page).to have_content(obsidio.title)
    expect(page).to have_content(obsidio.pages)
  end

  it 'user can delete an author' do
    kaufman = Author.create(name: 'Amie Kaufman')

    visit "/authors/#{kaufman.id}"
    click_on "Delete Author"

    expect(current_path). to eq(root_path)
    expect(page).to_not have_content(kaufman.name)
  end
end
