RSpec.describe "a visitor visits the book show page" do
  it "should show book info" do
    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5,
                            user_name: 'Mike')
    illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3,
                            user_name: 'Sarah')
    illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 5,
                            user_name: 'Destiny')

    visit "/books/?id=1"

    expect(page).to have_content(illuminae.title)
    expect(page).to have_content(illuminae.pages)
    expect(page).to have_content(illuminae.year)

  end

  it "should show book statistics" do
    kaufman = Author.create(name: 'Amie Kaufman')
    kristoff = Author.create(name: 'Jay Kristoff')
    illuminae = Book.create(title: 'Illuminae', pages: 608, year: 2015)
    illuminae.authors << [kaufman,kristoff]
    review_1 = illuminae.reviews.create(title: 'Loved it!',
                            description: 'Instead of narrative, this book is presented through transcripts of interviews describing events, email conversations, reports, graphic elements.' ,
                            score: 5,
                            user_name: 'Mike')
    review_2 = illuminae.reviews.create(title: 'Firefly Meets 2001: A Space Odyssey',
                            description: "Illuminae is like no other book I've ever read. It's told dossier-style, as a series of Instant-Message conversations, emails, interviews, and video transcriptions. And the rambling monologues of an ailing Artificial Intelligence system, BUT THAT'S PROBABLY NOT IMPORTANT.",
                            score: 3,
                            user_name: 'Sarah')
    review_3 = illuminae.reviews.create(title: 'Fast paced story',
                            description: 'Told through a series of case files, IM’s, emails, interviews, and more, Illuminae is a fast paced story about two regular teenagers forced to step up in order to save themselves and the ones they love.',
                            score: 5,
                            user_name: 'Destiny')

    visit "/books/#{illuminae.id}"

    expect(page).to have_content(review_1.title)
    expect(page).to have_content(review_2.description)
    expect(page).to have_content(review_3.user_name)

  end
end
