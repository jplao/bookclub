RSpec.describe "a visitor visits the book show page" do
  it "should show book info" do
    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5)
    illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3)
    illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 5)

    visit "/books/?id=1"

    expect(page).to have_content(illuminae.title)
    expect(page).to have_content(illuminae.pages)
    expect(page).to have_content(illuminae.year)
  end

  it "should show review information" do
    user_1 = User.create(name: "Renny Johnson")
    user_2 = User.create(name: "Tobi Lou")
    user_3 = User.create(name: "Athena Rogers")

    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    review_1 = illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5)
    review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3)
    review_3 = illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 5)
    user_1.reviews << review_1
    user_2.reviews << review_2
    user_3.reviews << review_3

    visit "/books/#{illuminae.id}"

    expect(page).to have_content(review_1.title)
    expect(page).to have_content(review_2.description)
    expect(page).to have_content(review_3.user.name)
  end
  it "should show book statistics" do
    user_1 = User.create(name: "Renny Johnson")
    user_2 = User.create(name: "Tobi Lou")
    user_3 = User.create(name: "Athena Rogers")

    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    review_1 = illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5)
    review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3)
    review_3 = illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 4)
    user_1.reviews << review_1
    user_2.reviews << review_2
    user_3.reviews << review_3

    visit "/books/#{illuminae.id}"
    within ".statistics"

    expect(page).to have_content("Top 3 Reviews\n#{review_1.title}")
    expect(page).to have_content("Bottom 3 Reviews\n#{review_2.title}")
    expect(page).to have_content("Average Rating:\n4")
  end

  describe 'user can delete a book' do
    it 'when visiting /books/:id' do
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    obsidio = Book.create(title: 'Obsidio', pages: 621, year: 2018)

    visit "/books/#{illuminae.id}"

    click_on "Delete Book"

    expect(current_path).to eq("/")
    expect(page).to_not have_content(illuminae.title)
    expect(page).to_not have_content(illuminae.pages)
    expect(page).to_not have_content(illuminae.year)

    expect(page).to have_content(obsidio.title)
    expect(page).to have_content(obsidio.pages)
    expect(page).to have_content(obsidio.year)
    end
  end
end
