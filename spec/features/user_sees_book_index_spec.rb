require 'rails_helper'
RSpec.describe "a visitor visits the book index page" do
  it 'should show a list of all books' do
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = kristoff.books.create(title: 'Illuminae', pages: 608, year: 2015)
    obsidio = kristoff.books.create(title: 'Obsidio', pages: 621, year: 2018)
    gemina = kristoff.books.create(title: 'Gemina', pages: 665, year: 2016)

    visit "/books"
    within "#book-#{illuminae.id}"
    expect(page).to have_content(kristoff.name)
    expect(page).to have_content(illuminae.title)
    expect(page).to have_content(illuminae.pages)
    expect(page).to have_content(illuminae.year)

    within "#book-#{obsidio.id}"
    expect(page).to have_content(obsidio.title)
    expect(page).to have_content(obsidio.pages)
    expect(page).to have_content(obsidio.year)

    within "#book-#{gemina.id}"
    expect(page).to have_content(obsidio.title)
    expect(page).to have_content(gemina.title)
  end

  it 'should show the statistics for each book on the page' do
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


    visit "/books"

    expect(page).to have_content("Total Reviews: 3")
    expect(page).to have_content("Average Rating: 4")
  end

  it 'should show the statistics for all books' do
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    review_1 = illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5)
    review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 5)
    review_3 = illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 4)

    obsidio = Book.create(title: 'Obsidio', pages: 621, year: 2018)
    review_4 = obsidio.reviews.create(title: 'Absolute perfection. This is how finales are supposed to be written',
                          description: 'Wow. Where do I even begin? This is one of my favorite series of all time, and I was so eager and terrified to see it end.',
                          score: 5)
    review_5 = obsidio.reviews.create(title: "Don't tell me Science Fiction is dead",
                          description: 'A million stars for the BEST series finale I have ever read! I want everyone to read it so this review will be spoiler-free.',
                          score: 4)

    gemina = Book.create(title: 'Gemina', pages: 665, year: 2016)
    review_6 = gemina.reviews.create(title: 'Fun YA Fiction',
                          description: 'Yup, this book is pretty amazing. I felt like it was better than Illuminae in some ways.',
                          score: 5)

    review_7 = gemina.reviews.create(title: "If you liked Illuminae you'll like this book",
                          description: "Gemina is the second book in the Illuminae Files, and it was told in much the same vein as Illuminae. Where Illuminae took place on a series of spaceships, Gemina takes place at the Heimdall, a space station that sits on a seven-way rip in spacetime. The Heimdall is a wormhole generator and serves as the connection point between the ENTIRE CIVILIZED UNIVERSE and the outskirt systems, such as the Kerenza system.",
                          score: 5)

    review_8 = gemina.reviews.create(title: "A great addition to a fantastic series!",
                          description: "After I finished reading Illuminae, I had every intention of taking a short break before starting the next book in the trilogy, Gemina. But did I? OF COURSE NOT. On the day I finished it, I broke down and started Gemina.",
                          score: 4)

    amazonia = Book.create(title: "Amazonia", pages: 544, year: 2009)
    review_9 = amazonia.reviews.create(title: 'A Creative Framework With Continuous Action',
                          description: "This was my first James Rollins book and it was a page turning thriller. The conceptual framework that kept the action moving was most creative. On the negative side readers have to suspend reality with regard to much of the story line. However as a positive, the action is almost continuous so one doesn't really have the time - or the inclination - to reflect on the absurdities.",
                          score: 5)


    review_10 = amazonia.reviews.create(title: 'Wut?',
                          description: "blabla",
                          score: 5)

    user_1 = User.create(name: "Renny Johnson")
    user_1.reviews << [review_1,review_2, review_8, review_10]

    user_2 = User.create(name: "Tobi Lou")
    user_2.reviews << [review_3, review_6]

    user_3 = User.create(name: "Robert Pack")
    user_3.reviews << [review_4, review_7, review_9]

    user_4 = User.create(name: "Sunny Sun")
    user_4.reviews << [review_5]

    visit "/books"
    within ".statistics"
    expect(page).to have_content("Top Rated Books:\n#{amazonia.title} #{gemina.title} #{illuminae.title}")
    expect(page).to have_content("Bottom Rated Books:\n#{obsidio.title} #{gemina.title} #{illuminae.title}")
    expect(page).to have_content("Top Users:\n#{user_1.name} #{user_3.name} #{user_2.name}")
  end

  it 'can sort books by page' do
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = kristoff.books.create(title: 'Illuminae', pages: 608, year: 2015)
    obsidio = kristoff.books.create(title: 'Obsidio', pages: 621, year: 2018)
    gemina = kristoff.books.create(title: 'Gemina', pages: 665, year: 2016)

  visit "/books"
  find("#sort_options option[value='/books?sort=pages&direction=DESC']").select_option

  expect(page).to have_content (gemina.title)
  expect(current_path).to eq("/books")


  end
end
